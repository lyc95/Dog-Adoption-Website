<template>
  <el-row style="padding: 10px">
    <el-col :span="12">
      <el-card style="font-size: 18px">
        <template #header>
          <el-row>
            <el-col :span="12">
              <span style="font-size: 18px; font-weight: bold;">Last Application of selected Adopter:</span>
            </el-col>
            <el-col :span="12">
              <span style="font-size: 18px; font-weight: bold;">Dog Id: {{this.dogId}}</span>
            </el-col>
          </el-row>
        </template>

        <p class="text item">Email: {{lastApplication.email}}</p>
        <p class="text item">Application Date: {{lastApplication.application_date}}</p>
        <p class="text item">Date Approved: {{lastApplication.date_approved}}</p>

        <template #footer>
          <el-row>
            <el-col :span="12">
              <span style="font-size: 18px; font-weight: bold;">Adoption Fee: {{adoptionDetails.adoption_fee}} {{isWaived}}</span>
            </el-col>
            <el-col :span="12">
              <div>
                <span style="font-size: 18px; font-weight: bold;">Adoption Date</span>
<!--                选日期-->
                <el-date-picker
                    v-model="confirmDetailsInfo.adoption_date"
                    style="width: 240px; padding: 10px; height: auto"
                    type="date"
                    placeholder="Pick a date"
                    value-format="YYYY-MM-DD"
                    @change="validateAdoptionDate"
                />
<!--                confirm按钮-->
                <el-button
                    type="primary"
                    plain
                    @click="showConfirm"
                >Confirm</el-button>
              </div>
            </el-col>
          </el-row>
        </template>
      </el-card>
    </el-col>
  </el-row>

  <el-divider style="padding: 10px"/>

  <el-row style="padding: 10px">
    <el-col :span="12">
      <span style="font-size: 18px; font-weight: bold;">Search by last name</span>
      <el-input
          v-model="adopterLastName"
          style="width: 240px;padding: 10px"
          placeholder="Search by last name"
          :prefix-icon="Search"
      />
      <el-button type="primary" @click="searchByLastName">Search</el-button>
    </el-col>
    <el-col :span="12" style="padding: 10px; text-align: right">
      <el-button type="primary" @click="viewDetailsClick">Back to Dog Details</el-button>
    </el-col>
  </el-row>

  <el-row>
    <el-col :span="24" style="padding: 10px">
<!--      选择Adopter-->
      <el-table
          :data="AdopterTableData"
          style="width: 100%"
          highlight-current-row
          :loading="loading"
          @current-change="handleCurrentChange">
        <el-table-column prop="email" label="Email" />
        <el-table-column prop="firstname" label="Firstname" />
        <el-table-column prop="lastname" label="Lastname" />
        <el-table-column prop="phoneNumber" label="Phone Number" />
        <el-table-column prop="householdSize" label="Household Size" />
        <el-table-column prop="street" label="Street" />
        <el-table-column prop="city" label="City" />
        <el-table-column prop="state" label="State" />
        <el-table-column prop="zipcode" label="Zipcode" />
      </el-table>
    </el-col>
  </el-row>

  <el-dialog v-model="dialogFormVisible" title="Confirm Adoption Details" width="700">
    <el-row>
      <el-col :span="12">
        <p>Adopter Email: {{confirmDetailsInfo.email}}</p>
        <p>Adopter Phone: {{confirmDetailsInfo.phoneNumber}}</p>
        <p>First Name: {{confirmDetailsInfo.firstname}}</p>
        <p>Last Name: {{confirmDetailsInfo.lastname}}</p>
        <p>Household Size: {{confirmDetailsInfo.householdSize}}</p>
        <p>Street: {{confirmDetailsInfo.street}}</p>
        <p>City: {{confirmDetailsInfo.city}}</p>
        <p>State: {{confirmDetailsInfo.state}}</p>
        <p>Zip Code: {{confirmDetailsInfo.zipcode}}</p>
      </el-col>
      <el-col :span="12">
        <p>Dog Name: {{confirmDetailsInfo.dogName}}</p>
        <p>Adoption Fee: {{confirmDetailsInfo.adoption_fee}} {{isWaived}}</p>
        <p>Adoption Date: {{confirmDetailsInfo.adoption_date}}</p>
      </el-col>
    </el-row>
    <template #footer>
      <div class="dialog-footer">
        <el-button @click="dialogFormVisible = false">Cancel</el-button>
        <el-button type="primary" @click="handleConfirm">
          Confirm
        </el-button>
      </div>
    </template>
  </el-dialog>



</template>

<script>
import { Search } from '@element-plus/icons-vue'
import request from '@/utils/request'

export default {
  data() {
    const dogid = this.$route.query.dogID || null
    return {
      dogId:dogid,
      dog:{},
      AdopterTableData: [],
      adopterLastName: '',
      loading: false,
      Search,
      adoptionDetails: {
        dogID:this.dogId,
        application_date:null,
        email:null,
        adoption_date:null,
        adoption_fee:0
      },
      dialogFormVisible:false,
      currentRow: null,
      lastApplication: {
        email:null,
        application_date:null,
        date_approved:null,
        application_state:null
      },
      isWaived:"",
      confirmDetailsInfo: {
        email: null,
        firstname: null,
        lastname: null,
        adoption_date: null,
        adoption_fee: 0,
        application_date: null,
        date_approved: null
      }

    }
  },
  methods: {
    async searchByLastName() {
      // 重置当前行
      this.currentRow = null;
      // 验证输入
      if (!this.adopterLastName.trim()) {
        this.$message.warning('Please enter a last name')
        return
      }
      this.loading = true
      try {
        const res = await request.get(`/api/adopter/lastname/${this.adopterLastName.trim()}`)

        // 根据你的拦截器，res已经是response.data，且code=200的数据
        if (res.data && res.data.length > 0) {
          this.AdopterTableData = [...new Set(
              res.data.map(item => JSON.stringify({
                email: item.email,
                phoneNumber: item.phone_number,
                householdSize: item.household_size,
                street: item.street,
                city: item.city,
                state: item.state,
                zipcode: item.zipcode,
                firstname: item.firstname,
                lastname: item.lastname
              })))
          ].map(str => JSON.parse(str));
          this.$message.success(`Found ${this.AdopterTableData.length} records`)
        } else {
          this.AdopterTableData = []
          this.$message.info('No matching records found')
        }
      } catch (error) {
        console.error('Search failed:', error)
        this.$message.error(error.message || 'Search failed')
        this.AdopterTableData = []
      } finally {
        this.loading = false
      }
    },
    handleCurrentChange(val) {
      this.currentRow = val;
      if (val) {
        request.get(`/api/approvedApplication/findLatestByEmail/${val.email}`).then(res => {
          if (res.data) {
            // 直接更新 confirmDetailsInfo，避免后续合并
            this.confirmDetailsInfo = {
              ...this.confirmDetailsInfo,
              ...this.currentRow,
              email: val.email,
              firstname: val.firstname,
              lastname: val.lastname,
              application_date: res.data.application_date,
              date_approved: res.data.date_approved,
              adoption_fee: this.adoptionDetails.adoption_fee
            };

            this.lastApplication.email = res.data.email;
            this.lastApplication.application_date = res.data.application_date;
            this.lastApplication.date_approved = res.data.date_approved;
            this.lastApplication.application_state = res.data.application_state;

            this.adoptionDetails.email = res.data.email;
            this.adoptionDetails.application_date = res.data.application_date;

          }
        });
      }
    },
    showConfirm() {
      // this.confirmDetailsInfo = {...this.lastApplication, ...this.adoptionDetails, ...this.confirmDetailsInfo, ...this.currentRow};
      console.log('this.confirmDetailsInfo: ', this.confirmDetailsInfo);
      if(this.confirmDetailsInfo.adoption_date == null){
        this.$message.info('Please select adoption date!');
      }else if(this.confirmDetailsInfo.email == null){
        this.$message.info('Please select an adopter!');
      }else{
        this.dialogFormVisible = true;
      }

    },
    async handleConfirm() {
      let adoptionDetailsForm = {
        dogID: this.dog.dogID,
        email: this.confirmDetailsInfo.email,
        application_date: this.confirmDetailsInfo.application_date,
        adoption_date: this.confirmDetailsInfo.adoption_date,
        adoption_fee: this.confirmDetailsInfo.adoption_fee
      }
      console.log('adoptionDetailsForm: ', adoptionDetailsForm);
      try {
        await this.addAdoptionDetails(adoptionDetailsForm);
        this.dialogFormVisible = false;

        // 确保使用正确的router实例
        await this.$router.push({
          path: '/dogDetails',
          query: {
            dogID: this.dog.dogID // 直接使用已知的dogID更可靠
          }
        });
        window.location.reload(); // 这会导致整个应用重新加载
      } catch (error) {
        console.error('操作失败:', error);
      }
    },
    addAdoptionDetails(form){
      request.post('/api/adoptionDetails', form);
    },
    // 选日期
    validateAdoptionDate(val) {

      //转换日期格式
      let currentDate = new Date();
      let currentDateString = currentDate.getFullYear() + '-' +
          (currentDate.getMonth() + 1).toString().padStart(2, '0') + '-' +
          currentDate.getDate().toString().padStart(2, '0');

      if (val && val.localeCompare(currentDateString) < 0) {//val(选中日期) > currentDateString
        this.$message.error('Adoption date cannot be in the past');
        this.confirmDetailsInfo.adoption_date = null; // 清空选择
      }
    },
    //获取dog的LastExpenseDate
    // async getLastExpenseDate(){
    //   let res = await request.get(`/api/expense/getall/${this.dogId}`);
    //   let expenses = await res.data;
    //   const lastExpenseDate = expenses.reduce((prev, current) => {
    //     // 比较日期字符串（因为 "YYYY-MM-DD" 可以直接比较字典序）
    //     return (current.expenseDate > prev.expenseDate) ? current : prev;
    //   }).expenseDate;
    //   return lastExpenseDate;
    // },
    // 查看详情
    viewDetailsClick() {
      this.$router.replace({
        path: '/dogDetails',
        query: { dogID: this.dog.dogID }
      });
      // window.location.reload(); // 如果需要强制刷新
    }
  },
  mounted() {
    this.adoptionDetails.dogID = this.dogId;

    request.get(`/api/expense/adoptionFee/${this.dogId}`)
      .then(res => {
        this.adoptionDetails.adoption_fee = res.data;
      });
    request.get(`/api/dog/${this.dogId}`)
      .then(res => {
        let dog = res.data;
        this.confirmDetailsInfo.dogName = dog.name;
        this.dog = dog;
        console.log("dog: ", dog);
        if(dog.name == "Sideways" && dog.breed.indexOf("Terrier") != -1){
          this.isWaived = "(Waived)";
        } else {
          this.isWaived = "";
        }
      });
  }
}

</script>
