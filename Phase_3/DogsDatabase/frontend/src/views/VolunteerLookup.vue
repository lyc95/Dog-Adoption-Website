<template>
    <div>
        <h1>Volunteer Lookup</h1>
        <div class="search-bar">
            <el-input v-model="input" placeholder="Search Volunteers" clearable class="search-input"/> 
            <el-button type="primary" :icon="Search" @click="handleSearch">Search</el-button>
        </div>
        <div>
          <el-table :data="tableData" width="100%" empty-text="No volunteers found">
          <el-table-column prop="email" label="Email" /> 
          <el-table-column prop="firstname" label="Firstname" />
          <el-table-column prop="lastname" label="Lastname" />
          <el-table-column prop="phoneNumber" label="PhoneNumber" />
          </el-table>
        </div>
    </div>
</template>
<script setup>
import { ref } from 'vue'
import request from "@/utils/request.js";
import { Search } from '@element-plus/icons-vue'

const input = ref('');
const tableData = ref([0]);
async function handleSearch() {

  console.log('Searching for:', input.value)
  console.log(input.value == '');
  try 
  {
    const url = input.value == '' ? `/api/report/volunteer`: `/api/report/volunteer/${input.value}`;
    const response = await request.get(url);
    tableData.value = response.data
  } catch (error) {
    console.error('Failed to fetch data:', error)
    tableData.value = []
  }
}

</script>

<style scoped>
.search-bar {
  display: flex;
  align-items: center;
  gap: 12px; /* spacing between input and button */
}

.search-input {
  width: 250px; /* or 100%, or auto — depending on layout */
}
</style>