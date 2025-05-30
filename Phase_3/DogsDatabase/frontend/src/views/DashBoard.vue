<template>
  <div class="dashboard">
    <el-container style="height: 100vh">
      <el-header>
        <el-row>
          <el-col :span="8">
            <div style="font-size: 35px;font-weight: bold;width: 50%">
              DashBoard
            </div>
          </el-col>
          <el-col :span="8">
            <el-card style="width: 480px;font-size: 17px;font-weight: bold;text-align:center" shadow="always">
              Hello,{{user.email}}! ({{user.userType}})
            </el-card>
          </el-col>
        </el-row>
      </el-header>

      <el-main>
        <el-table :data="data.tableData" class="tableSpec" border style="width: 100%">
          <el-table-column prop="dogID" label="ID" width="'auto'" />
          <el-table-column prop="name" label="Name" width="'auto'" />
          <el-table-column prop="breed" label="Breed" width="'auto'" />
          <el-table-column prop="sex" label="Sex" width="'auto'" />
          <el-table-column prop="alteration_status" label="Alteration Status" width="'auto'" />
          <el-table-column prop="ageDisplay" label="Age" width="'auto'" />
          <el-table-column prop="adoption_state" label="Adoption Status" width="'auto'" />
          <el-table-column prop="surrender_date" label="Surrender Date" width="'auto'" />

          <el-table-column
              prop="adoption_available_state"
              label="Adoption Available State"
              width="'auto'"
              :filters="[
        { text: 'Available', value: 'Available' },
        { text: 'Unavailable', value: 'Unavailable' },
      ]"
              :filter-method="filterAvailable"
              filter-placement="bottom-end"
          >
            <template #default="scope">
              <el-tag
                  :type="scope.row.adoption_available_state === 'Available' ? 'success' : 'danger'"
                  disable-transitions
              >{{ scope.row.adoption_available_state }}</el-tag
              >
            </template>
          </el-table-column>

          <el-table-column fixed="right" label="Operations" min-width="120">
            <template #default="scope">
              <!-- 通过scope.row 传递当前行数据 -->
              <el-button type="primary" @click="viewDetailsClick(scope.row)">View  Details</el-button>
            </template>
          </el-table-column>
        </el-table>
      </el-main>
      <el-footer>
        <el-container>
          <el-aside style="display: flex; width: 800px; justify-content: center; align-items: center">
            <div class="content-box" style="padding: 10px;">
              Current available space:
            </div>
            <div style="padding: 10px;">
              {{data.currentDogNum}}/{{data.spaseSize}}
            </div>
            <div v-if="user.userType === 'ADMIN'">
              <el-button
                  type="primary"
                  @click="updateSpaseClick"
                  style="padding: 10px;">Update Space</el-button>
              <el-input
                  v-model="data.inputShelterSize"
                  style="width: 240px; padding: 10px;"
                  placeholder="Please input Shelter Size" />
            </div>
          </el-aside>
          <el-main style="display: flex; justify-content: center; align-items: center">
            <el-button type="primary" @click="addDogClick">Add Dog</el-button>
            <el-button type="primary"
                @click="addAdoptionApplicationClick"
            >Add Adoption Application</el-button>
            <el-button type="primary"
                @click="adoptionApplicationReviewClick"
                v-if="user.userType === 'EXECUTIVEDIRECTOR'">Adoption Application Review</el-button>
            <el-button type="primary"
                @click="viewReportsClick"
                v-if="user.userType === 'EXECUTIVEDIRECTOR'">View Reports</el-button>
            <el-button type="primary" @click="logoutClick">Logout</el-button>
          </el-main>
        </el-container>
      </el-footer>
    </el-container>
  </div>
</template>

<script setup>
  import { reactive } from 'vue'
  import request from "../utils/request.js";
  import {ElMessage} from "element-plus";
  import { useRouter } from 'vue-router';

  const data = reactive({
    //访问/api/dog/all获取数据
    tableData: [],
    spaseSize: '',
    currentDogNum: 0,
    inputShelterSize: 0

  })

  const router = useRouter()
  const user = JSON.parse(sessionStorage.getItem('user'))

  // 初始化页面数据
  const loadData = async () => {
    try {
      // 获取基础数据
      const dogsRes = await request.get('/api/dog/all');

      // 并行处理所有微芯片查询
      const enhancedDogs = await Promise.all(dogsRes.data.map(async (dog, index) => {
        try {
          const microchipRes = await request.get('/api/microchip/get', {
            params: { dogID: dog.dogID }
          });

          console.log('dog:',dog);
          console.log('microchipRes:',microchipRes);

          const surrenderDate = new Date(dog.surrender_date);
          let currentDate = new Date();
          console.log('currentDate:',currentDate);

          const dogCurrentMouthAge = getMonthDiff(surrenderDate, currentDate) + dog.age_when_surrender;
          // Calculate age display text
          let ageDisplay = AgeFormatter(dogCurrentMouthAge);

          // Use object spread to create new reference
          return {
            ...dog,
            adoption_available_state:
                dog.alteration_status && microchipRes.data.length !== 0
                    ? 'Available'
                    : 'Unavailable',
            ageDisplay: ageDisplay // Add the formatted age display
          };
        } catch (e) {
          console.error(`dogID ${dog.dogID} fail load data:`, e);
          return {
            ...dog,
            adoption_available_state: 'Unavailable',
            ageDisplay: 'Unknown' // Default display when there's an error
          };
        }
      }));

      // 原子化更新数据
      data.tableData  = enhancedDogs;
      console.log('enhancedDogs:', enhancedDogs)
      //data.currentDogNum 等于enhancedDogs中adoption_state为false的个数
      data.currentDogNum = enhancedDogs.filter(dog => dog.adoption_state === false).length;

      const configRes = await request.get('/api/systemConfig/get',  {
        params: { configName: 'ShelterSize'}
      })
      data.spaseSize = configRes.data

    } catch (mainError) {
      ElMessage.error(' fail load data');
      console.error(' unknown error:', mainError);
    }

  };

  // 年龄格式化
  const AgeFormatter = (cellValue) => {
    if (cellValue == null) return 'N/A';
    const years = Math.floor(cellValue / 12);
    const months = cellValue % 12;

    if (years > 0 && months > 0) {
      return `${years} year${years > 1 ? 's' : ''} ${months} month${months > 1 ? 's' : ''}`;
    } else if (years > 0) {
      return `${years} year${years > 1 ? 's' : ''}`;
    } else {
      return `${months} month${months > 1 ? 's' : ''}`;
    }
  }

  // 获取月份差
  function getMonthDiff(date1, date2) {
    // 获取两日期的年、月
    const year1 = date1.getFullYear();
    const year2 = date2.getFullYear();
    const month1 = date1.getMonth();
    const month2 = date2.getMonth();

    // 计算基本月份差
    let months = (year2 - year1) * 12 + (month2 - month1);

    // 如果日期2的日小于日期1的日，则表示不足一个月
    if (date2.getDate() < date1.getDate()) {
      months--;
    }

    return months;
  }



  // 查看详情
  const viewDetailsClick = (rowData) => {
    router.push({
      path: '/dogDetails',
      query: {
        dogID: rowData.dogID,   // 传递目标DogID
      }
    })
  }

  // 添加狗
  const addDogClick = async () => {
    await loadData();
    if (data.currentDogNum < data.spaseSize){
      router.push({
        path: '/addDog'
      })
    }else {
      ElMessage.error("Shelter is full")
    }

  }

  // 添加申请
  const addAdoptionApplicationClick = () => {
    router.push({
      path: '/addAdoptionApplication'
    })

  }

  // 查看申请
  const adoptionApplicationReviewClick = () => {
    router.push({
      path: '/adoptionApplicationReview'
    })

  }

  // 查看报告
  const viewReportsClick = () => {
    router.push({
      path: '/report'
    })
  }

  const filterAvailable = (value, row) => {
    return row.adoption_available_state === value;
  }

  // 更新空间
  const updateSpaseClick = async () => {
    if(data.inputShelterSize >= data.currentDogNum){
      await request.put('/api/systemConfig/update', {
        configName: 'ShelterSize',
        config_value: data.inputShelterSize
      }).then(async (res) => {
        console.log(res);
        if (res.code === '200') {
          ElMessage.success("Update Successfully")
          await loadData();
        } else {
          ElMessage.error(res.msg)
        }
      })
    }else{
      ElMessage.error("The shelter size is too small")
    }
  }

  //退出登录
  const logoutClick = () => {
    request.post('/api/auth/logout', {
      email: user.email,
    }).then(res => {
      console.log(res)
      if (res.code === '200') {
        sessionStorage.removeItem('user');
        ElMessage.success("Logout Successfully")
        setTimeout(() => {
          window.location.href = '/login'
        }, 1000)
      } else {
        ElMessage.error(res.msg)

      }
    })
  }

  loadData();


</script>

<style scoped>
  .dashboard {
    justify-content: center;
    align-items: center;
    background-size: cover;
    background-image: url('@/assets/imgs/background.png');
  }
  .content-box {
    font-size: medium;
    color: #202122;
    font-family: system-ui, -apple-system, sans-serif;

    /* 子元素继承机制 */
    *:not(pre, code) {
      font: inherit;
      color: inherit;
    }
  }
  .el-table {
    --el-table-border-color: transparent;
    --el-table-border: none;
    --el-table-text-color: #202122;
    --el-table-header-text-color: #202122;
    --el-table-row-hover-bg-color: transparent;
    --el-table-current-row-bg-color: transparent;
    --el-table-header-bg-color: transparent;
    --el-table-bg-color: transparent;
    --el-table-tr-bg-color: transparent;
    --el-table-expanded-cell-bg-color: transparent;
    font-size: medium;
    color: #202122;
  }
  .el-button {
    font-size: medium;
  }
</style>
