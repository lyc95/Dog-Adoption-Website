<template>
  <div class="dashboard">
    <el-container style="height: 100vh">
      <el-header>
        <div style="font-size: 35px;font-weight: bold;">
          DashBoard
        </div>
      </el-header>
      <el-main>
        <el-table :data="data.tableData" class="tableSpec" border style="width: 100%">
          <el-table-column prop="dogID" label="ID" width="'auto'" />
          <el-table-column prop="name" label="Name" width="'auto'" />
          <el-table-column prop="breed" label="Breed" width="'auto'" />
          <el-table-column prop="sex" label="Sex" width="'auto'" />
          <el-table-column prop="alteration_status" label="Alteration Status" width="'auto'" />
          <el-table-column prop="age_when_surrender" label="Age" width="'auto'" />
          <el-table-column prop="adoption_state" label="Adoption Status" width="'auto'" />
          <el-table-column fixed="right" label="Operations" min-width="120">
            <template #default="scope">
              <!-- 通过scope.row 传递当前行数据 -->
              <el-button @click="viewDetailsClick(scope.row)">View  Details</el-button>
            </template>
          </el-table-column>
        </el-table>
      </el-main>
      <el-footer>
        <el-container>
          <el-aside style="display: flex; justify-content: center; align-items: center">
            <div class="content-box">
              Current available space:
            </div>
            <div>
              5/15
            </div>
          </el-aside>
          <el-main style="display: flex; justify-content: center; align-items: center">
            <el-button @click="addDogClick">Add Dog</el-button>
            <el-button @click="addAdoptionApplicationClick">Add Adoption Application</el-button>
            <el-button @click="adoptionApplicationReviewClick">Adoption Application Review</el-button>
            <el-button @click="viewReportsClick">View Reports</el-button>
            <el-button @click="logoutClick">Logout</el-button>
          </el-main>
        </el-container>
      </el-footer>
    </el-container>
  </div>
</template>

<script setup>
  import { reactive } from 'vue'
  import request from "@/utils/request.js";
  import {ElMessage} from "element-plus";
  import { useRouter } from 'vue-router'

  const data = reactive({
    //访问/api/dog/all获取数据
    tableData: []
  })

  const loadAllDogs = () => {
    request.get('/api/dog/all').then(res => {
      console.log(res.data)
      data.tableData = res.data;
    })
  }

  const viewDetailsClick = (rowData) => {
    const router = useRouter()
    router.push({
      path: '/viewDetails',
      query: {
        dogID: rowData.dogID,   // 传递目标参数
        // 可附加其他字段（可选）
        name: rowData.name
      }
    })
  }
  const addDogClick = () => {
    console.log("addDogClick")

  }
  const addAdoptionApplicationClick = () => {
    console.log("addAdoptionApplicationClick")

  }
  const adoptionApplicationReviewClick = () => {
    console.log("adoptionApplicationReviewClick")

  }
  const viewReportsClick = () => {
    console.log("viewReportsClick")

  }
  const logoutClick = () => {
    console.log("logoutClick")
    request.post('/api/auth/logout').then(res => {
      console.log(res)
      if (res.code === '200') {
        ElMessage.success("Logout Successfully")
        setTimeout(() => {
          window.location.href = '/login'
        }, 1000)
      } else {
        ElMessage.error(res.msg)

      }
    })
  }

  loadAllDogs();


</script>

<style scoped>
  .dashboard {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
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
