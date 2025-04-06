<template>
    <h1>Monthly Adoption Report</h1>
    <el-table :data="tableData" width="100%" border>
        <el-table-column prop="yearMonth" label="Year Month" />
        <el-table-column prop="breeds" label="Breeds" :formatter="formatBreeds"/>
        <el-table-column prop="dogsSurrendered" label="The Nos of Dogs Surrendered" />
        <el-table-column prop="dogsAdopted" label="The Nos of Dogs Adopted" />
        <el-table-column prop="totalExpenses" label="Total Expenses" :formatter="currencyFormatter"/>
        <el-table-column prop="adoptionFees" label="Adoption Fees" :formatter="currencyFormatter"/>
        <el-table-column prop="netProfit" label="Net Profit":formatter="currencyFormatter" />
    </el-table>
</template>

<script setup>
import request from "@/utils/request.js";
import { ref, onMounted } from 'vue';
// Declare a ref to store the table data
const tableData = ref([]);
function formatBreeds(row) {
  return row.breeds || 'N/A';
}
const currencyFormatter = (row, column, cellValue) => {
  // Assuming the currency is USD, you can modify it as needed.
  return `$${parseFloat(cellValue).toFixed(2)}`
}
// Fetch data from API when the component is mounted
onMounted(async () => {
  try {
    const response = await request({ 
        url: '/api/report/MAR',
        method: 'get'
    });
    console.log(response)
    
    tableData.value = response.data; 
  } catch (error) {
    console.error('Error fetching data:', error);
  }
});
</script>