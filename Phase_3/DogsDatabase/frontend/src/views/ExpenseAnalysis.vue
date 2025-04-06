<template>
    <h1 >Expense Analysis Report</h1>
    <el-table :data="tableData" width="100%" border>
        <el-table-column prop="vendorName" label="Vendor Name" width = "250px" />
        <el-table-column prop="totalSpent" label="Total Spend" :formatter="currencyFormatter"/>
    </el-table>
</template>
<script setup>
import request from "@/utils/request.js";
import { ref, onMounted } from 'vue';
// Declare a ref to store the table data
const tableData = ref([]);
const currencyFormatter = (row, column, cellValue) => {
  // Assuming the currency is USD, you can modify it as needed.
  return `$${parseFloat(cellValue).toFixed(2)}`
}
// Fetch data from API when the component is mounted
onMounted(async () => {
  try {
    const response = await request({ 
        url: '/api/report/EAR',
        method: 'get'
    });
    console.log(response)
    tableData.value = response.data; 
  } catch (error) {
    console.error('Error fetching data:', error);
  }
});
</script>