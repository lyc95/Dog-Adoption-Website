<template>
    <h2 >Dog Details</h2>
    <el-card  shadow="always">
      <!-- Dog Info -->
      <el-descriptions :column="2" border>
        <el-descriptions-item label="Dog ID">{{ dog.dogID }}</el-descriptions-item>
        <el-descriptions-item label="Name">{{ dog.name }}</el-descriptions-item>
        <el-descriptions-item label="Breed"> {{ dog.breed }}</el-descriptions-item>
        <el-descriptions-item label="Sex">{{ dog.sex }}</el-descriptions-item>
        <el-descriptions-item label="Alteration Status">{{ dog.alteration_status }}</el-descriptions-item>
        <el-descriptions-item label="Age">{{ dog.age_when_surrender }} months</el-descriptions-item>
        <el-descriptions-item label="Microchip ID">{{ dog.microchipID }}</el-descriptions-item>
        <el-descriptions-item label="Surrender Date">{{ dog.surrender_date }}</el-descriptions-item>
        <el-descriptions-item label="Surrender phone number" v-if="dog.surrenderPhonenumber">{{ dog.surrenderPhonenumber }}</el-descriptions-item>
        <el-descriptions-item label="Surrendered by animal control">{{ dog.surrenderedByLACD }}</el-descriptions-item>
        <el-descriptions-item label="Description" :span="2">{{ dog.description }}</el-descriptions-item>
      </el-descriptions>
        <!-- Conditional Add Adoption -->
      <div v-if="canAddAdoption" style="margin-top: 10px;">
        <el-button type="success" @click="handleAddAdoption">
          Add Adoption
        </el-button>
      </div>
      <!-- Expenses Section -->
      <div>
        <h3 >Expenses</h3>
        <el-table :data="expenses" style="width: 100%" border>
            <el-table-column prop="expenseDate" label="Expense Date" />
            <el-table-column prop="vendorName" label="Vendor Name" />
            <el-table-column prop="category" label="Category" />
            <el-table-column prop="amount" label="Amount" />
        </el-table>
        <el-row justify="end" style="margin-top: 5px;">
            <el-col :span="6">
                Total expenses amount: ${{ grandTotal.toFixed(2) }}
            </el-col>
        </el-row>
        <el-row justify="end" style="margin-top: 5px;">
        <el-col :span="6">
            <el-button type="primary" @click="handleAddExpense">Add Expense</el-button>
        </el-col>
        </el-row>
    </div>
    </el-card>
</template>
  
<script setup>
import { computed, ref } from 'vue'

// Props or data (replace with actual props or fetch logic)
const dog = ref({
dogID: '123',
name: 'Buddy',
sex: 'Male',
surrender_date: '2023-12-01',
age_when_surrender: 14,
alteration_status: true,
description: 'Friendly and energetic Labrador.',
adoption_state: true,
surrenderID: 'S456',
breed: 'aaa,bbb',
microchipID: '123456',
surrenderPhonenumber: 123456,
surrenderedByLACD: 'Yes'
})

const userRole = ref('Executive Director') // Or 'Staff', etc.

const expenses = ref([
    { category: 'Vet', amount: 120 , expenseDate : '2025-04-01', vendorName: 'vendorname'},
    { category: 'Food', amount: 45 , expenseDate : '2025-04-01', vendorName: 'vendorname'},
    { category: 'Vet', amount: 80 , expenseDate : '2025-04-01', vendorName: 'vendorname'},
    { category: 'Grooming', amount: 60 , expenseDate : '2025-04-01', vendorName: 'vendorname'}
])

const grandTotal = computed(() =>
    expenses.value.reduce((sum, exp) => sum + exp.amount, 0)
)
const canAddAdoption = computed(() =>
    true
)

// Actions
function handleAddExpense() {
    // Navigate to or open expense form
    console.log('Add Expense Clicked')
}

function navigateToExpenseForm() {
    // Replace with router navigation if needed
    console.log('Navigating to Expense Form')
}

function handleAddAdoption() {
    console.log('Add Adoption Clicked')
}
</script>