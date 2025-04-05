<template>
  <div>
    <h1>Volunteer Birthday Report</h1>
    <div style="display: flex; align-items: center; gap: 1rem; margin-bottom: 1rem;">
    <!-- Year Selector -->
    <el-select v-model="currentYear" placeholder="Select Year" style="width: 150px">
      <el-option v-for="year in yearOptions" :key="year" :label="year" :value="year"/>
    </el-select>
    <!-- Month Selector -->
    <el-select v-model="currentMonth" placeholder="Select Month" style="width: 150px">
      <el-option v-for="(month, index) in monthOptions" :key="index" :label="month" :value="index + 1"/>
    </el-select>
  </div>
  </div>
    <el-table v-if="tableData.length > 0" :data="tableData" width="100%" >
        <el-table-column prop="email" label="Email" />
        <el-table-column prop="firstname" label="Firstname" />
        <el-table-column prop="lastname" label="Lastname" />
        <el-table-column prop="isMilestone" label="Milestone birthday" :formatter="milestoneFormatter"/>
    </el-table>
    <!-- Show message if no data -->
    <div v-else style="text-align: center; padding: 20px; color: gray;">
      No volunteer birthdays for  {{ monthOptions[currentMonth -1] }},  {{ currentYear }} !
    </div>
</template>

<script setup>
import request from "@/utils/request.js";
import { ref, onMounted, computed, watch} from 'vue';
// Declare a ref to store the table data
const tableData = ref([]);
const currentYear = ref(computed(() => new Date().getFullYear()).value);
const currentMonth = ref(computed(() => new Date().getMonth() + 1).value);
function milestoneFormatter(row) {
  return row.isMilestone ? 'Yes' : 'No';
}

// Year options (you can generate dynamically if needed)
const yearOptions = [currentYear.value, currentYear.value - 1]
// Month names
const monthOptions = [
  'January', 'February', 'March', 'April', 'May', 'June',
  'July', 'August', 'September', 'October', 'November', 'December'
]

async function fetchBirthdayData(year, month) {
  try {
    const response = await request.get(`/api/report/birthday/${year}/${month}`)
    tableData.value = response.data
  } catch (error) {
    console.error('Failed to fetch data:', error)
    tableData.value = []
  }
}
// Fetch data from API when the component is mounted
onMounted(async () => { fetchBirthdayData(currentYear.value, currentMonth.value) });

// Watch for changes to year or month
watch([currentYear, currentMonth], ([newYear, newMonth]) => {
  fetchBirthdayData(newYear, newMonth)
})
</script>