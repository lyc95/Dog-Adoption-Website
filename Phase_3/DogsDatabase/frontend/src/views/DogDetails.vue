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
                <el-button  v-if="showUpdateBreedBtn" @click="dialogBreedFormVisible = true" size="default" type="success" style="width: 100px;">Update</el-button>
            </div>
        </el-descriptions-item> 
        <el-descriptions-item label="Sex">{{ dog.sex }}</el-descriptions-item>
        <el-descriptions-item label="Alteration Status">
            <div style="display: flex; justify-content: space-between; align-items: center; width: 100%;">
                <span>{{ alterationStatusFormatter(dog.alterationStatus) }}</span>
                <el-button v-if="showAlterationStatusBtn" @click="alterationStatusdialogVisible = true" size="default" type="success" style=" width: 100px;">Update</el-button>
            </div>
        </el-descriptions-item>
        <el-descriptions-item label="Age">{{ AgeFormatter(dog.currentAgeInMonth) }} </el-descriptions-item>
        <el-descriptions-item label="Microchip ID">
            <div style="display: flex; justify-content: space-between; align-items: center; width: 100%;">
                <span>{{ microchipIDFormatter(dog.microchipID) }}</span>
                <el-button v-if="showAddMicrochipBtn" @click="dialogMicrochipFormVisible = true" size="default" type="success" style=" width: 100px;">Add</el-button>
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
        <el-descriptions-item label="Adoption Status" :span="2">
          {{ dog.adoptionState ? 'ADOPTED' : ' NOT ADOPTED' }}
        </el-descriptions-item>
      </el-descriptions>
      <div>
        <el-button type="success" @click="backToDashBoard" style="margin-top: 10px;">Back to Dashboard</el-button>
      </div>
      <!-- Conditional Add Adoption -->
      <div v-if="canAddAdoption" style="margin-top: 10px;">
        <el-button type="success" @click="handleAddAdoption">Add Adoption</el-button>
      </div>

      <!-- Expenses Section -->
      <div v-if="isDogFetched" style="margin-top: 20px;">
        <h3>Expenses {{ waivedFormatter(dog.animalControlSurrenderIndicator, dog.name, dog.breed) }}</h3>
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
        <el-dialog title="Add Expense" style="text-align: center;" v-model="showForm" width="800px" @close="resetForm">
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
            <el-button type="primary" @click="submitExpenseForm">Add</el-button>
        </template>
        </el-dialog>
        </div>
      </div>
      <div v-if="!isDogFetched">
        <p>No dog details found</p>
    </div>
    </el-card>

    <!-- diaglog to update dog's alteration status -->
    <el-dialog v-model="alterationStatusdialogVisible" title="Change Dog's Alteration Status" width="500" >
    <span>Do you confirm you want to update the alteration status to 'altered'?</span>
    <template #footer>
      <div class="dialog-footer">
        <el-button @click="alterationStatusdialogVisible = false">Cancel</el-button>
        <el-button type="primary" @click="setDogAlterationStatus(dogid)">
          Confirm
        </el-button>
      </div>
    </template>
  </el-dialog>

  <!-- diaglog to update dog's Microchip -->
  <el-dialog v-model="dialogMicrochipFormVisible" title="Add Microchip" width="500">
    <el-form :model="microchipForm">
      <el-form-item label="Microchip Vendor:" :label-width="formLabelWidth">
        <el-select
          v-model="microchipForm.manufactureName"
          placeholder="Please select a Microchip Vendor from list"
          filterable
          remote
          :remote-method="fetchMicrochipVendors">
          <el-option v-for="item in microchipVendors" :key="item.manufactureName" :label="item.manufactureName" :value="item.manufactureName" />
        </el-select>
      </el-form-item>
      <el-form-item label="Microchip ID:" :label-width="formLabelWidth">
        <el-input v-model="microchipForm.microchipID" autocomplete="off" />
      </el-form-item>

    </el-form>
    <template #footer>
      <div class="dialog-footer">
        <el-button @click="dialogMicrochipFormVisible = false">Cancel</el-button>
        <el-button type="primary" @click="addMicrochip(dogid)">
          Confirm
        </el-button>
      </div>
    </template>
  </el-dialog>

  <!-- diaglog to update dog's breed -->
  <el-dialog v-model="dialogBreedFormVisible" title="Update Dog's Breed" width="500">
    <el-form :model="breedForm" >
      <el-form-item label="Selected Breed: " :label-width="formLabelWidth">
        <el-select-v2
          v-model="breedForm.selectedBreeds"
          filterable
          placeholder="Please select breed(s)"
          style="width: 240px"
          multiple
          remote
          :options="dogBreeds"
          :remote-method="fetchDogBreeds" />
      </el-form-item>
    </el-form>
    <template #footer>
      <div class="dialog-footer">
        <el-button @click="dialogBreedFormVisible = false">Cancel</el-button>
        <el-button type="primary" @click="addBreeds">
          Confirm
        </el-button>
      </div>
    </template>
  </el-dialog>

</template>

<script setup>
import { computed, ref , onMounted} from 'vue'
import request from "@/utils/request.js";
import { useRoute , useRouter} from 'vue-router';
import { ElMessage } from 'element-plus'
const router = useRouter()
const user = JSON.parse(sessionStorage.getItem('user'))
// variables to show dialog
const alterationStatusdialogVisible = ref(false)
const dialogMicrochipFormVisible = ref(false)
const dialogBreedFormVisible = ref(false)

const route = useRoute();
const dogid = route.query.dogID;
const dog = ref({})
const expenses = ref([])
const showForm = ref(false)
// variables to show Btns
const showAlterationStatusBtn = ref(false)
const showUpdateBreedBtn = ref(false)
const showAddMicrochipBtn = ref(false)
const canAddAdoption = ref(false)

const isDogFetched = ref(false)
async function fetchDogDetailsData(dogID) {
  try {
    const response = await request.get(`/api/dog/details/${dogID}`)
    dog.value = response.data;
    expenses.value = response.data.dogExpensesList
    isDogFetched.value = true
    console.log(dog.value)
    if (dog.value.alterationStatus != true) {
      showAlterationStatusBtn.value = true;
    }
    if (dog.value.microchipID == null)
    {
      showAddMicrochipBtn.value = true;
    }
    if (dog.value.breed == null || dog.value.breed.includes("Mixed") || dog.value.breed.includes("Unknown"))
    {
      showUpdateBreedBtn.value = true
    }
    udpateAdoptability();
  } catch (error) {
    console.error('Failed to fetch data:', error)
    dog.value = null
    expenses.value = null
    isDogFetched.value = false
  }
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

async function fetchMicrochipVendors(query)
{
  try {
        let url = "/api/microchip/vendor"
        if (query)
        {
            url = `/api/microchip/vendor/${query}`
        }
        const response = await request.get(url)
        microchipVendors.value = response.data;
    } catch (error) {
        console.error('Failed to fetch data:', error)
        microchipVendors.value = []
    }
}

async function fetchDogBreeds(query)
{
  try {
        let url = "/api/dog/breeds"
        if (query)
        {
            url = `/api/dog/breeds/${query}`
        }
        const response = await request.get(url)
        dogBreeds.value = response.data.map(breed => ({
          value: breed.breedname,
          label: breed.breedname
        }));
    } catch (error) {
        console.error('Failed to fetch data:', error)
        dogBreeds.value = []
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

const waivedFormatter = (animalControlSurrenderIndicator, name, breed) => {
  if ((animalControlSurrenderIndicator == 'Yes') || 
      (name === 'Sideways' && breed && breed.toLowerCase().includes('terrier'))) 
  {
    return '(waived)';
  }
  return '';
};
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
  if (!user)
  {
    await router.push({path: '/login'})
  }
  await fetchDogDetailsData(dogid);
});

const userRole = ref('Executive Director') // Or 'Staff', etc.

const backToDashBoard = () => {
  router.push({
    path: '/dashboard'
  })
}
// Actions
function handleAddExpenseBtn() {
showForm.value = true
}

const handleAddAdoption = () => {
  router.push({
    path: '/addAdoption',
    query: {
      dogID: dogid,
    }
  })
}
function udpateAdoptability()
{
  canAddAdoption.value = (user.userType == 'EXECUTIVEDIRECTOR' && dog.value.microchipID != null && dog.value.alterationStatus == true && dog.value.adoptionDate == null && dog.value.adoptionState == false);
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
  async function submitExpenseForm()
  {
    const formdata = {
        dogID:dogid,
        vendorName: form.value.vendorName,
        category: form.value.category,
        expenseDate:formatDate(form.value.date),
        amount:form.value.amount
    };
    if (!formdata.vendorName || !formdata.category || !formdata.expenseDate || !formdata.amount)
    {
      errorMsg('All input can not be empty !');
    }
    else if (new Date(dog.value.surrenderDate) > new Date(formdata.expenseDate))
    {
      errorMsg('The Expense Date must not eariler than its surrender date !');
    }
    else
    {
      try {
      const response = await request.post(`/api/expense/check`, formdata);
      if (response.data == 1)
      {
          errorMsg('There is already a expense with same vendor name and date');
      }
      else
      {
          // To add expenseadd
          await request.post(`/api/expense/add`, formdata);
          isDogFetched.value = false
          showForm.value = false
          resetForm();
          // This is wo wait 
          await wait(100);
          //fetch again
          await fetchDogDetailsData(dogid);
          successfulMsg('Congrats, the expense is added successfully.');
      }
      } catch (error) {
          console.error('Failed to fetch data:', error)
      }
    }
  }
  const form = ref({
  amount: null,
  date: '',
  vendorName: '',
  category: ''
  })
  const microchipForm = ref({
  microchipID: '',
  manufactureName : ''
  })
  const breedForm = ref({
  selectedBreeds: []
  })

  // list read from api
  const categories = ref([])
  const microchipVendors = ref([])
  const dogBreeds = ref([])

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

  async function setDogAlterationStatus(dogID)
  {

  //Call API to update alteration status
  try {
    const response = await request.put(`/api/dog/update/alterationstatus/${dogID}`);
    // Disabled the diag and Btn for updating the alteration status
    alterationStatusdialogVisible.value = false
    dog.value.alterationStatus = true
    showAlterationStatusBtn.value = false
    successfulMsg('Congrats, The Alteration Status is updated');
    udpateAdoptability();
  } catch (error) {
    console.error('Failed to fetch data:', error)
  }
  }
  async function addMicrochip(dogID)
  {
  //Call API to update alteration status
  const formdata = {
    dogID:dogid,
    microchipID: microchipForm.value.microchipID,
    manufactureName: microchipForm.value.manufactureName
  };
  if (!formdata.microchipID || !formdata.manufactureName)
  {
    errorMsg('Please input both microchipID and Microchip Vendor Name!');
  }
  else
  {
    
    try 
    {
      /* Check uniqueness of input microchipID */
      const checkResponse = await request.get(`/api/microchip/check/${formdata.microchipID}`);
      if (checkResponse.data > 0)
      {
        errorMsg("Microchip ID is not unique and is already existed in our record!");
      }
      else
      {
        const response = await request.post(`/api/microchip/add`, formdata);
        // Disabled the diag and Btn for adding the microchip
        dialogMicrochipFormVisible.value = false
        dog.value.microchipID = formdata.microchipID
        showAddMicrochipBtn.value = false
        successfulMsg('Congrats, The Microchip information has been added !');
        udpateAdoptability();
      }
    } catch (error) {
      console.error('Failed to fetch data:', error)
    }
  }
  }

  async function addBreeds(dogID)
  {
  const formdata = {
    dogID: dogid,
    updatedBreeds: breedForm.value.selectedBreeds
  };

  if (formdata.updatedBreeds.length === 0)
  {
    errorMsg('Please select al least one breed for the dog!');
  }
  else
  {
    try {
      const response = await request.put(`/api/dog/update/breeds`, formdata);
      // Disabled the diag and Btn for adding the microchip
      dialogBreedFormVisible.value = false
      dog.value.breed = formdata.updatedBreeds.sort().join(', ');
      showUpdateBreedBtn.value = false
      successfulMsg('Congrats, The Breed information has been added !');
    } catch (error) {
      console.error('Failed to fetch data:', error)
    }
  }
  }
  const successfulMsg = (text) => {
  ElMessage({
    message: text,
    type: 'success',
    plain: true,
  })
  }
  const errorMsg = (text) => {
  ElMessage({
    message: text,
    type: 'error',
    plain: true,
  })
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