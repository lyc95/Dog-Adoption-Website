<template>
    <div>
        <h1>Volunteer Lookup</h1>
        <div>
            <el-input v-model="input" placeholder="Search Volunteers" clearable /> 
        </div>
        <div>

        </div>
    </div>
</template>
<script setup>
import { ref , watch} from 'vue'
import request from "@/utils/request.js";
const input = ref('');
const tableData = ref([]);
async function handleSearch() {
  console.log('Searching for:', input.value)
  try 
  {
    const response = await request.get(`/api/report/volunteer/${input.value}`)
    tableData.value = response.data
  } catch (error) {
    console.error('Failed to fetch data:', error)
    tableData.value = []
  }
}

watch(input, (newInput) => {
  handleSearch(newInput); // Call search handler with the updated input
})
</script>