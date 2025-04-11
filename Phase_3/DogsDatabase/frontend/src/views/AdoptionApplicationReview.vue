<template>
  <el-card class="app-card" shadow="hover">
    <!-- Card header with heading -->
    <template #header>
      <div class="card-header">Adoption Application Review</div>
    </template>

    <el-row>
      <el-col :span="12" >
        <!-- Tabs for section selection -->
        <el-button-group class="mb-4">
          <el-button
              v-for="tab in tabs"
              :key="tab.value"
              :type="activeTab === tab.value ? 'primary' : 'default'"
              @click="changeTab(tab.value)"
          >
            {{ tab.label }}
          </el-button>
        </el-button-group>
      </el-col>
      <el-col :span="12">
        <div class="button-bottom" style="text-align: right;">
          <el-button type="warning" @click="goBackDashboard">
            Back to Dashboard
          </el-button>
        </div>
      </el-col>
    </el-row>





    <!-- Application Table -->
    <el-table
      v-if="formatedApplications.length"
      :data="formatedApplications"
      border
      style="width: 100%" >
      <el-table-column prop="application_date" label="Application Date" width="140" />
      <el-table-column prop="email" label="Email" width="180" />
      <el-table-column prop="phone_number" label="Phone Number" width="140" />
      <el-table-column prop="household_size" label="Household Size" width="140" />
      <el-table-column prop="firstname" label="First Name" width="120" />
      <el-table-column prop="lastname" label="Last Name" width="120" />
      <el-table-column prop="street" label="Street" />
      <el-table-column prop="city" label="City" width="120" />
      <el-table-column prop="state" label="State" width="100" />
      <el-table-column prop="zipcode" label="Zipcode" width="100" />
      <!-- Only show actions for pending applications -->
      <el-table-column v-if="activeTab === 'pending'" label="Actions" width="220">
        <template #default="scope">
          <el-button type="success" size="small" @click="updateStatus(scope.row.email, scope.row.application_date, 'approve')">
            Approve
          </el-button>
          <el-button type="danger" size="small" @click="updateStatus(scope.row.email, scope.row.application_date, 'reject')">
            Reject
          </el-button>
        </template>
      </el-table-column>
      <!-- Only show actions for rejected applications -->
      <el-table-column v-if="activeTab === 'rejected'" prop="date_rejected" label="Date Rejected" width="220"/>
      <!-- Only show actions for approved applications -->
      <el-table-column v-if="activeTab === 'approved'" prop="date_approved" label="Date Approved" width="220"/>
      <el-table-column v-if="activeTab === 'approved'" prop="application_state" label="Application Status" width="220"/>
    </el-table>

    <!-- Display when no applications are available -->
    <el-empty v-else description="No Applications" />

  </el-card>
</template>

<script setup>
import { ref, reactive, computed, onMounted } from 'vue'
import { ElMessage } from 'element-plus'
import request from "@/utils/request.js";
import {useRouter} from 'vue-router';
const router = useRouter();
const backToDashBoard = () => {
  router.push({
    path: '/dashboard'
  })
}
// Tab configuration 
const tabs = ref([
  { label: 'Pending Approval', value: 'pending' },
  { label: 'Approved', value: 'approved' },
  { label: 'Rejected', value: 'rejected' },
])

const activeTab = ref('pending')

// Mock application data
// Added "id" property in the object only to update status on specific row.
// This is used internally for lookup only even if not shown in the table.
const applications = reactive([])

// formated with fetched data
const formatedApplications = computed(() => applications)

// Change active tab.PI.
const changeTab = (tabValue) => {
  activeTab.value = tabValue
  fetchApplications();
}

// Function to update the status of an application (for pending applications).
// In production, you would call your API here to update status in the backend.
const updateStatus = async (email, date, newStatus) => {
  if (email && date )
  {
    try 
    {
      await request.put(`/api/adoption-application/${newStatus}`, {
        email: email,
        application_date: date
      });
      //Update the applications
      await fetchApplications();
      const msg = (newStatus=== 'approve') ? 'approved' : 'rejected';
      ElMessage.success(`Application has been ${msg}`);
    } catch (error) {
      console.error('Error updating applications:', error)
      ElMessage.error('Failed to updating from API')
    }
    
  }
}

// Function to load application data from backend API.
const fetchApplications = async () => {
  try {
    const response = await request.get(`/api/adoption-application/get/${activeTab.value}`);
    applications.splice(0, applications.length, ...response.data)
  } catch (error) {
    console.error('Error fetching applications:', error)
    ElMessage.error('Failed to fetch applications from API')
  }
}


// Function for "Back to Dashboard" button.
const goBackDashboard = () => {
  backToDashBoard();
}

// Load initial data when component mounts.
onMounted(() => {
  fetchApplications()
})
</script>

<style scoped>
.app-card {
  max-width: 100%;
  margin: 40px auto;
  padding: 20px;
}

.card-header {
  font-size: 22px;
  font-weight: bold;
  color: #303133;
}

.mb-4 {
  margin-bottom: 20px;
}

.button-bottom {
  margin-top: 20px;
  text-align: left;
}
</style>
