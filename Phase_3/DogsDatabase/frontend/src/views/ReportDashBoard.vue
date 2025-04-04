<template>
    <div>
         <el-container style="height: 100vh;">
        <!-- Sidebar Menu -->
        <el-aside width="200px" style="border-right: 1px solid black;" >
            <el-menu class="el-menu-vertical-demo" style="height: 100%; " :default-active="activeReport">
                <el-menu-item index="acr" @click="goToReport('acr')">
                Animal Control Report
                </el-menu-item>
                <el-menu-item index="mar" @click="goToReport('mar')">
                Monthly Adoption Report
                </el-menu-item>
                <el-menu-item index="ea" @click="goToReport('ea')">
                Expense Analysis
                </el-menu-item>
                <el-menu-item index="vl" @click="goToReport('vl')">
                Volunteer Lookup
                </el-menu-item>
                <el-menu-item index="vb" @click="goToReport('vb')">
                Volunteer Birthdays
                </el-menu-item>
                <el-menu-item @click="$router.push('/dashboard')">
                Go Back to Main DashBoard
                </el-menu-item>
            </el-menu>
        </el-aside>

        <!-- Main Content Area -->
        <el-container>
            <el-main>
                <router-view></router-view> <!-- This is where reports or welcome will show -->
            </el-main>
        </el-container>

    </el-container>
    </div>
</template>

<script setup>
import { useRoute, useRouter } from 'vue-router';
import { ref, reactive } from 'vue'
import { ElMessage } from 'element-plus'
import { computed } from 'vue';
const router = useRouter();
const route = useRoute();
const activeReport = computed(() => {
  const segments = route.path.split('/');
  return segments.includes('report') ? segments[segments.length - 1] : '';
});
// Navigation helper
function goToReport(name) {
  router.push(`/report/${name}`);
}
</script>