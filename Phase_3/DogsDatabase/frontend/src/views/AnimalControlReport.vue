<template>
    <div class="report-container">
      <el-card shadow="hover">
        <template #header>
          <div class="card-header">
            <h2 style="margin: 0">Animal Control Report</h2>
          </div>
        </template>
        <el-table
          :data="reportData"
          style="width: 100%"
          border
          stripe
          v-loading="loading">
          <el-table-column prop="yearMonth" label="Year-Month" width="120" fixed />
          
          <el-table-column label="Dogs Surrendered by LACD" width="220">
            <template #default="{ row }">
              <el-link type="primary" @click="toggleDrilldown('dogsSurrenderedByLACDList', row)">
                {{ row.dogsSurrenderedByLACD }}
                <el-icon v-if="isActiveDrilldown('dogsSurrenderedByLACDList', row.yearMonth)">
                  <ArrowDown />
                </el-icon>
              </el-link>
            </template>
          </el-table-column>
  
          <el-table-column label="Dogs Adopted After 60 Days" width="220">
            <template #default="{ row }">
              <el-link type="primary" @click="toggleDrilldown('dogsAdoptedAfter60Dayslist', row)">
                {{ row.dogsAdoptedAfter60Days }}
                <el-icon v-if="isActiveDrilldown('dogsAdoptedAfter60Dayslist', row.yearMonth)">
                  <ArrowDown />
                </el-icon>
              </el-link>
            </template>
          </el-table-column>
  
          <el-table-column label="Total Adoption Expenses" width="180">
            <template #default="{ row }">
              <el-link type="primary" @click="toggleDrilldown('dogsAdoptedExpensesList', row)">
                ${{ formatCurrency(row.dogsAdoptedTotalExpenses) }}
                <el-icon v-if="isActiveDrilldown('dogsAdoptedExpensesList', row.yearMonth)">
                  <ArrowDown />
                </el-icon>
              </el-link>
            </template>
          </el-table-column>
        </el-table>
  
        <el-collapse-transition>
          <div v-if="activeDrilldown.column && activeDrilldown.yearMonth" class="drilldown-section">
            <el-card class="box-card" shadow="never">
              <template #header>
                <div class="card-header">
                  <h3>{{ drilldownTitle }} - {{ activeDrilldown.yearMonth }}</h3>
                </div>
              </template>
  
              <el-table
                :data="drilldownData"
                border
                style="width: 100%"
                empty-text="No data available">
                <el-table-column prop="dogID" label="Dog ID" width="100" />
                <el-table-column prop="breeds" label="Breeds" />
                <el-table-column prop="sex" label="Sex" width="100" />
                <el-table-column label="Alteration Status" width="130" v-if="activeDrilldown.column == 'dogsSurrenderedByLACDList'" >
                  <template #default="{ row }">
                    {{ formatAlterationStatus(row.alterationStatus) }}
                  </template>
                </el-table-column>
                <el-table-column label="Microchip ID" width="150" >
                  <template #default="{ row }">
                    {{ row.microchipID || 'N/A' }}
                  </template>
                </el-table-column>
                <el-table-column prop="surrenderDate" label="Surrender Date" width="150" />
                <el-table-column 
                  v-if="activeDrilldown.column === 'dogsAdoptedAfter60Dayslist'"
                  prop="daysInRescue" 
                  label="Days in Rescue" 
                  width="140"
                />
                <el-table-column 
                  v-if="activeDrilldown.column === 'dogsAdoptedExpensesList'"
                  prop="animalControlSurrenderIndicator" 
                  label="Animal Control Surrender Indicator" 
                  width="150"
                />
                <el-table-column 
                  v-if="activeDrilldown.column === 'dogsAdoptedExpensesList'"
                  label="Expenses" 
                  width="200">
                  <template #default="{ row }">
                    ${{ formatCurrency(row.totalExpenses) }} {{ row.animalControlSurrenderIndicator == 'Yes' ? '(waived)' : '' }}
                  </template>
                </el-table-column>
              </el-table>
            </el-card>
          </div>
        </el-collapse-transition>
      </el-card>
    </div>
  </template>
  
  <script setup>
  import { ref, computed, onMounted } from 'vue';
  import { ElTable, ElTableColumn, ElLink, ElCard, ElCollapseTransition, ElIcon } from 'element-plus';
  import { ArrowDown } from '@element-plus/icons-vue';
  import request from "@/utils/request.js";
  const activeDrilldown = ref({
    column: null,
    yearMonth: null
  });
  
  // Use your provided data structure
  const reportData = ref([]);

  onMounted(async () => {
    try {
        const response = await request.get(`/api/report/LACDR`);
        reportData.value = response.data;
    } catch (error) {
        console.error('Error fetching data:', error);
  }});

  const formatCurrency = (value) => {
    return parseFloat(value).toLocaleString('en-US', {
      minimumFractionDigits: 2,
      maximumFractionDigits: 2
    });
  };
  
  const formatAlterationStatus = (status) => {
    if (status == true) return 'Yes';
    if (status == false) return 'No';
    return 'N/A';
  };
  
  const toggleDrilldown = (column, row) => {
    if (activeDrilldown.value.column === column && activeDrilldown.value.yearMonth === row.yearMonth) {
      activeDrilldown.value = { column: null, yearMonth: null };
    } else {
      activeDrilldown.value = { column, yearMonth: row.yearMonth };
    }
  };
  
  const isActiveDrilldown = (column, yearMonth) => {
    return activeDrilldown.value.column === column && activeDrilldown.value.yearMonth === yearMonth;
  };
  
  const drilldownData = computed(() => {
    const record = reportData.value.find(d => d.yearMonth === activeDrilldown.value.yearMonth);
    return record ? record[activeDrilldown.value.column] : [];
  });
  
  const drilldownTitle = computed(() => {
    const titles = {
      dogsSurrenderedByLACDList: 'Drill Down Report for Animal Control Surrenders',
      dogsAdoptedAfter60Dayslist: 'Drill Down Report for Dogs Aadopted In the Rescue 60 days or more',
      dogsAdoptedExpensesList: 'Drill Down Report for Total Expenses for dogs adopted '
    };
    return titles[activeDrilldown.value.column] || '';
  });
  </script>