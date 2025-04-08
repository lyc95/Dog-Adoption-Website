<template>
<!--  <div class="flex gap-4 mb-4">-->
<!--    <span>Search by last name</span>-->
<!--    <el-input-->
<!--        v-model="adopterLastName"-->
<!--        style="width: 240px"-->
<!--        placeholder="Search by last name"-->
<!--        :prefix-icon="Search"-->
<!--    />-->
<!--    <el-button type="primary" @click="searchByLastName">Search</el-button>-->
<!--  </div>-->
  <el-row>
    <el-col :span="24">
      <span style="font-size: 18px; font-weight: bold;">Adoption Date</span>
      <el-date-picker
          v-model="adoptionDetails.adoption_date"
          style="width: 240px; padding: 10px; height: auto"
          type="date"
          placeholder="Pick a date"
      />
      <el-button
          type="primary"
          plain
          @click="dialogFormVisible = true">Confirm</el-button>
    </el-col>
  </el-row>

  <el-divider />

  <el-row>
    <el-col :span="24">
      <span style="font-size: 18px; font-weight: bold;">Search by last name</span>
      <el-input
          v-model="adopterLastName"
          style="width: 240px;padding: 10px"
          placeholder="Search by last name"
          :prefix-icon="Search"
      />
      <el-button type="primary" @click="searchByLastName">Search</el-button>
    </el-col>
  </el-row>

  <el-row>
    <el-col :span="24" style="padding: 10px">
      <el-table :data="AdopterTableData" style="width: 100%">
        <el-table-column type="selection" width="55" />
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
    <div>
      AABBCCDD
    </div>
    <template #footer>
      <div class="dialog-footer">
        <el-button @click="dialogFormVisible = false">Cancel</el-button>
        <el-button type="primary" @click="dialogFormVisible = false">
          Confirm
        </el-button>
      </div>
    </template>
  </el-dialog>



</template>

<script>
import { Search } from '@element-plus/icons-vue'
import request from '@/utils/request'
import {ref} from "vue";

// import {useRoute} from "vue-router"; // 导入你封装的axios实例
// const route = useRoute();
// const dogid = route.params.dogid;
const dogid = 3;

export default {
  data() {
    return {
      AdopterTableData: [],
      adopterLastName: '',
      loading: false,
      Search,
      adoptionDetails: {
        dogID:dogid,
        application_date:null,
        email:null,
        adoption_date:null,
        adoption_fee:0
      },
      dialogFormVisible:false

    }
  },
  methods: {
    async searchByLastName() {
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
          this.AdopterTableData = res.data.map(item => ({
            // 假设后端返回snake_case，前端使用camelCase
            email: item.email,
            phoneNumber: item.phone_number,
            householdSize: item.household_size,
            street: item.street,
            city: item.city,
            state: item.state,
            zipcode: item.zipcode,
            firstname: item.firstname,
            lastname: item.lastname
          }))
          this.$message.success(`Found ${res.data.length} records`)
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
    }
  }
}
</script>

<style>
.el-row {
  margin-bottom: 20px;
}

.el-row:last-child {
  margin-bottom: 0;
}

.el-col {
  border-radius: 4px;
}

.grid-content {
  border-radius: 4px;
  min-height: 36px;
}
</style>