<template>
    <h2>Dog Details</h2>
    <el-card shadow="always">
      <!-- Dog Info -->
      <el-descriptions v-if="isDogFetched" :column="2" border>
        <el-descriptions-item label="Dog ID">{{ dog.dogID }}</el-descriptions-item>
        <el-descriptions-item label="Name">{{ dog.name }}</el-descriptions-item>
        <el-descriptions-item label="Breed" >
            <div style="display: flex; justify-content: space-between; align-items: center; width: 100%;">
                <span>{{ dog.breed }} </span>
                <el-button  v-if="true" @click="updateBreed" size="mini" type="success" style="width: 100px;">Update</el-button>
            </div>
        </el-descriptions-item> 
        <el-descriptions-item label="Sex">{{ dog.sex }}</el-descriptions-item>
        <el-descriptions-item label="Alteration Status">
            <div style="display: flex; justify-content: space-between; align-items: center; width: 100%;">
                <span>{{ alterationStatusFormatter(dog.alterationStatus) }}</span>
                <el-button v-if="true" @click="updateAlterationStatus" size="mini" type="success" style=" width: 100px;">Update</el-button>
            </div>
        </el-descriptions-item>
        <el-descriptions-item label="Age">{{ AgeFormatter(dog.currentAgeInMonth) }} </el-descriptions-item>
        <el-descriptions-item label="Microchip ID">
            <div style="display: flex; justify-content: space-between; align-items: center; width: 100%;">
                <span>{{ microchipIDFormatter(dog.microchipID) }}</span>
                <el-button v-if="true" @click="AddMicrochip" size="mini" type="success" style=" width: 100px;">Add</el-button>
            </div>
        </el-descriptions-item>
        <el-descriptions-item label="Surrender Date">{{ dog.surrenderDate }}</el-descriptions-item>
        <el-descriptions-item label="Surrender phone number" v-if="dog.surrenderPhonenumber">
          {{ dog.surrenderPhonenumber }}
        </el-descriptions-item>
        <el-descriptions-item label="Surrendered by animal control">
          {{ dog.animalControlSurrenderIndicator }}
        </el-descriptions-item>
        <el-descriptions-item label="Description" v-if="dog.description" :span="2">{{ dog.description }}</el-descriptions-item>
      </el-descriptions>
      
      <!-- Conditional Add Adoption -->
      <div v-if="canAddAdoption" style="margin-top: 10px;">
        <el-button type="success" @click="handleAddAdoption">Add Adoption</el-button>
      </div>
  
      <!-- Expenses Section -->
      <div v-if="isDogFetched" style="margin-top: 20px;">
        <h3>Expenses</h3>
        <el-table :data="expenses" style="width: 100%" border empty-text="No expenses recorded" v-if="isDogFetched">
          <el-table-column prop="category" label="Category" />
          <el-table-column prop="totalExpense" label="Total Expenses" :formatter="currencyFormatter" />
        </el-table>
  
        <div v-if="isDogFetched" style="text-align: right; margin-top: 10px; font-weight: bold; margin-right: 10px;">
          Grand Total: ${{ dog.grandTotal }}
        </div>
  
        <!-- Button aligned to the right -->
        <div style="text-align: right; margin-top: 10px; margin-right: 10px;">
        <el-button v-if= "isDogFetched" type="primary" @click="handleAddExpenseBtn">Add Expense</el-button>

        <!-- Form to add expense -->
        <el-dialog title="Add Expense" v-model="showForm" width="800px" @close="resetForm">
            <el-form :model="form" :rules="rules" ref="expenseForm" label-width="200px">
                <el-form-item label="Vendor Name" prop="vendorName">
                    <el-input v-model="form.vendorName" />
                </el-form-item>

                <el-form-item label="Category" prop="category">
                    <el-select
                        v-model="form.category"
                        placeholder="Select category"
                        filterable
                        remote
                        :remote-method="fetchCategories">
                        <el-option v-for="item in categories" :key="item.category" :label="item.category" :value="item.category" />
                    </el-select>
                </el-form-item>

                <el-form-item label="Amount" prop="amount">
                    <el-input-number v-model="form.amount" :min="0.1" :step="0.01" />
                </el-form-item>

                <el-form-item label="Date" prop="date">
                    <el-date-picker v-model="form.date" type="date" placeholder="Select date" />
                </el-form-item>
            </el-form>
        <template #footer>
            <el-button @click="showForm = false">Cancel</el-button>
            <el-button type="primary" @click="submitForm">Add</el-button>
        </template>
        </el-dialog>
        </div>
      </div>
      <div v-if="!isDogFetched">
        <p>No dog details found</p>
    </div>
    </el-card>

</template>
  
<script setup>
import { computed, ref , onMounted} from 'vue'
import request from "@/utils/request.js";
import { useRoute } from 'vue-router';
const route = useRoute();
const dogid = route.params.dogid;
const dog = ref({})
const expenses = ref([])
const showForm = ref(false)
const isDogFetched = ref(false)
async function fetchDogDetailsData(dogID) {
  try {
    const response = await request.get(`/api/dog/details/${dogID}`)
    dog.value = response.data;
    expenses.value = response.data.dogExpensesList
    isDogFetched.value = true
    console.log(response)
  } catch (error) {
    console.error('Failed to fetch data:', error)
    dog.value = null
    expenses.value = null
    isDogFetched.value = false
  }
  console.log(dog)

}
async function fetchCategories(query) {
    try {
        let url = "/api/expense/categoty"
        if (query)
        {
            url = `/api/expense/categoty/${query}`
        }
        const response = await request.get(url)
        categories.value = response.data;
    } catch (error) {
        console.error('Failed to fetch data:', error)
        categories.value = []
    }
}
const currencyFormatter = (row, column, cellValue) => {

  return `$${parseFloat(cellValue).toFixed(2)}`
}

const alterationStatusFormatter = (cellValue) => {
    if (cellValue == null) return 'N/A';
    if (cellValue == true)
    {
        return 'ALTERED'
    }
    else
    {
        return "NOT ALTERED"
    }
}
const microchipIDFormatter = (cellValue) => {
    if (cellValue == null) return 'N/A';
    else return cellValue;
}

const AgeFormatter = (cellValue) => {
    if (cellValue == null) return 'N/A';
    const years = Math.floor(cellValue / 12);
    const months = cellValue % 12;

    if (years > 0 && months > 0) {
        return `${years} year${years > 1 ? 's' : ''} ${months} month${months > 1 ? 's' : ''}`;
    } else if (years > 0) {
        return `${years} year${years > 1 ? 's' : ''}`;
    } else {
        return `${months} month${months > 1 ? 's' : ''}`;
    }
}
onMounted(async () => {
    fetchDogDetailsData(dogid);
});

const userRole = ref('Executive Director') // Or 'Staff', etc.

const canAddAdoption = computed(() =>
    isDogFetched &&
    dog.value.microchipID != null &&
    dog.value.alterationStatus == true &&
    dog.value.adoptionDate == null &&
    dog.value.adoptionState == false
)

// Actions
function handleAddExpenseBtn() {
    showForm.value = true
}

function handleAddAdoption() {
    console.log('Added ')
}
function resetForm(){
    form.value.amount = null;
    form.value.date = '';
    form.value.vendorName = '';
    form.value.category = ''
}

function formatDate(date) {
  const d = new Date(date);
  const year = d.getFullYear();
  const month = String(d.getMonth() + 1).padStart(2, '0'); // Months are 0-indexed
  const day = String(d.getDate()).padStart(2, '0');
  return `${year}-${month}-${day}`;
}
async function submitForm()
{
    const formdata = {
        dogID:dogid,
        vendorName: form.value.vendorName,
        category: form.value.category,
        expenseDate:formatDate(form.value.date),
        amount:form.value.amount
    };
    // console.log(formdata)
    try {
        const response = await request.post(`/api/expense/check`, formdata);
        if (response.data == 1)
        {
            alert('There is already a expense with same vendor name and date');
        }
        else
        {
            // To add expenseadd
            request.post(`/api/expense/add`, formdata);
            isDogFetched.value = false
            showForm.value = false
            resetForm();
            // This is wo wait 
            await wait(100);
            //fetch again
            await fetchDogDetailsData(dogid);
        }
    } catch (error) {
        console.error('Failed to fetch data:', error)
    }
}
const form = ref({
  amount: null,
  date: '',
  vendorName: '',
  category: ''
})
const categories = ref([])
function wait(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}
const rules = {
  amount: [
    { required: true, message: 'Please enter the amount', trigger: 'change' }
  ],
  date: [
    { required: true, message: 'Please select a date', trigger: 'change' }
  ],
  vendorName: [
    { required: true, message: 'Please enter the vendor name', trigger: 'blur' }
  ],
  category: [
    { required: true, message: 'Please select a category', trigger: 'change' }
  ]
}
</script>


<style scoped>
.update-button {
  margin-left: 10px;
  background-color: #4CAF50;
  color: white;
  border: none;
  font-weight: bold;
}
</style>
