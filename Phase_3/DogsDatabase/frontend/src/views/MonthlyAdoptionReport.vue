<template>
    <h1>Monthly Adoption Report</h1>
    <el-table :data="tableData" width="100%" >
        <el-table-column prop="yearMonth" label="Year Month" />
        <el-table-column prop="breeds" label="Breeds" />
        <el-table-column prop="dogsSurrendered" label="The Nos of Dogs Surrendered" />
        <el-table-column prop="dogsAdopted" label="The Nos of Dogs Adopted" />
        <el-table-column prop="totalExpenses" label="Total Expenses" />
        <el-table-column prop="adoptionFees" label="Adoption Fees" />
        <el-table-column prop="netProfit" label="Net Profit" />
    </el-table>
</template>

<script setup>
import request from "@/utils/request.js";
import { ref, onMounted } from 'vue';
// Declare a ref to store the table data
const tableData = ref([]);

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