<template>
  <el-card class="box-card">
    <h2 class="mb-4 text-xl font-semibold">Add Dog</h2>

    <el-form
        ref="dogFormRef"
        :model="form"
        :rules="rules"
        label-width="180px"
        class="w-full max-w-3xl" >
      <!-- Name -->
      <el-form-item label="Name" prop="name">
        <el-input v-model="form.name" placeholder="Enter name" />
      </el-form-item>

      <!-- Breed -->
      <el-form-item label="Breed" prop="breed">
        <div class="flex items-start gap-4">
          <el-select-v2
            v-model="form.breed"
            filterable
            placeholder="Please select breed(s)"
            multiple
            remote
            :disabled="isMixedOrUnknownSelected"
            :options="dogBreeds"
            :remote-method="fetchDogBreeds" />
          <el-checkbox v-model="mixedSelected" @change="handleBreedToggle('Mixed')">
            Mixed
          </el-checkbox>
          <el-checkbox v-model="unknownSelected" @change="handleBreedToggle('Unknown')">
            Unknown
          </el-checkbox>
        </div>
      </el-form-item>

      <!-- Sex -->
      <el-form-item label="Sex" prop="sex">
        <el-select v-model="form.sex" placeholder="Select sex">
          <el-option label="Male" value="Male" />
          <el-option label="Female" value="Female" />
          <el-option label="Unknown" value="Unknown" />
        </el-select>
      </el-form-item>

      <!-- Alteration Status -->
      <el-form-item label="Alteration Status" prop="alterationStatus">
        <el-select v-model="form.alterationStatus" placeholder="Select">
          <el-option label="Yes" :value="true" />
          <el-option label="No" :value="false" />
        </el-select>
      </el-form-item>

      <!-- Age -->
      <el-form-item label="Age (Months)" prop="age">
        <el-input-number v-model="form.age" :min="0" :max="30" />
      </el-form-item>

      <!-- Description -->
      <el-form-item label="Description">
        <el-input
            v-model="form.description"
            type="textarea"
            :rows="2"
            placeholder="Short description"
        />
      </el-form-item>

      <!-- Microchip ID -->
      <el-form-item label="Microchip ID">
        <el-input v-model.trim="form.microchipID" @blur="handleRules"/>
      </el-form-item>

      <!-- Vendor Name -->
      <el-form-item label="Microchip Vendor Name" prop="manufactureName">
        <el-select
          v-model="form.manufactureName"
          placeholder="Please select a Microchip Vendor from list"
          filterable
          remote
          :remote-method="fetchMicrochipVendors"
          @blur="handleRules">
          <el-option v-for="item in microchipVendors" :key="item.manufactureName" :label="item.manufactureName" :value="item.manufactureName" />
        </el-select>
      </el-form-item>

      <!-- Surrender Date -->
      <el-form-item label="Surrender Date" prop="surrenderDate">
        <el-date-picker
            v-model="form.surrenderDate"
            type="date"
            placeholder="Pick a day"
            format="YYYY-MM-DD"
        />
      </el-form-item>

      <!-- surrenderType -->
      <el-form-item label="Individual / Animal Control" prop="surrenderType">
        <el-select v-model="form.surrenderType" placeholder="Select surrenderType" @blur="handleRules">
          <el-option label="Individual" value="INDIVIDUAL" />
          <el-option label="Animal Control" value="LOCALANIMALCONTROLDEPARTMENT" />
        </el-select>
      </el-form-item>

      <!-- Phone -->
      <el-form-item label="Surrender's Phone" prop="phonenumber">
        <el-input v-model.trim="form.phonenumber" placeholder="Plese input phonenumber" />
      </el-form-item>

      <!-- Actions -->
      <el-form-item>
        <el-button
            type="primary"
            :loading="loading"
            @click="onSubmit">
          Add Dog
        </el-button>
        <el-button @click="onReset">Reset</el-button>
        <el-button @click="goToDashboard">Back to Dashboard</el-button>
      </el-form-item>
    </el-form>
  </el-card>
</template>

<script setup>
import { ref, reactive, computed } from 'vue'
import { useRouter } from 'vue-router'
import { ElMessage } from 'element-plus'
import request from "@/utils/request.js";
const router = useRouter()

// ----------------------- state -----------------------
const form = reactive({
  name: '',
  breed: [],
  sex: '',
  alterationStatus: '',
  age: null,
  description: '',
  microchipID: '',
  manufactureName: '',
  surrenderDate: '',
  surrenderType: '',
  phonenumber: ''
})

const mixedSelected = ref(false)
const unknownSelected= ref(false)

const dogBreeds = ref([])
const microchipVendors = ref([])
// ----------------------- computed -----------------------
const isMixedOrUnknownSelected = computed(() => mixedSelected.value || unknownSelected.value)
// ----------------------- validation rules -----------------------

const baseRules = {
  name: [
    { required: true, message: 'Name is required', trigger: 'blur' }
  ],
  breed: [
    { type: 'array', required: true, message: 'Please select at least one breed', trigger: 'blur' }
  ],
  sex: [
    { required: true, message: 'Please select sex', trigger: 'blur' }
  ],
  alterationStatus: [
    { required: true, message: 'Alteration status is required', trigger: 'blur' }
  ],
  age: [
    { required: true, type: 'number', message: 'Age is required', trigger: 'blur' }
  ],
  surrenderDate: [
    { required: true, message: 'Surrender date is required', trigger: 'blur' }
  ],
  surrenderType: [
    { required: true, message: 'Surrender type is required', trigger: 'blur' }
  ]
}
const surrenderRules = {
  phonenumber: [
    { pattern: /^\d{3}[- ]?\d{3}[- ]?\d{4}$/, message: 'Please enter a valid phone number', trigger: 'blur' },
    { required: true, message: 'Phonenumber is required for Animal Control Department', trigger: 'blur' }
  ]
}
const microchipRules = {
  microchipID: [
    { required: true, message: 'Microchip ID is required', trigger: 'blur' }
  ],
  manufactureName: [
    { required: true, message: 'Microchip Vendor is required', trigger: 'blur' }
  ],
}
const rules = reactive({ ...baseRules })
// ----------------------- refs -----------------------
const dogFormRef = ref()
const loading = ref(false)

// ----------------------- methods -----------------------
const handleBreedToggle = (input) => {
  if (input === 'Mixed')
  {
    if (mixedSelected.value) {
      form.breed = ['Mixed']
      unknownSelected.value = false
    }
    else
    {
      form.breed = []
    }
  }
  else if (input === 'Unknown')
  {
    if (unknownSelected.value) 
    {
      form.breed = ['Unknown']
      mixedSelected.value = false
    }
    else
    {
      form.breed = []
    }
  }
}
const handleRules = () => {
  let appliedRules = { ...baseRules };

  if (form.microchipID || form.manufactureName) {
    appliedRules = { ...appliedRules, ...microchipRules };
  }

  if (form.surrenderType === 'Animal Control') {
    appliedRules = { ...appliedRules, ...surrenderRules };
  }

  // Clear and reassign the reactive object (Vue 3 safe way)
  for (const key in rules) {
    delete rules[key];
  }
  Object.assign(rules, appliedRules);
};

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

const onSubmit = () => {
  dogFormRef.value.validate(async valid => {
    if (!valid) return
    // business rule: Bulldog cannot be named Uga
    const isBulldog = form.breed.some(breed => breed.toLowerCase().includes("bulldog")) || form.breed.includes('Mixed') && form.breed.includes('Unknown')
    const isUga = form.name.trim().toLowerCase() === 'uga'
    if (isBulldog && isUga) {
      ElMessage.error('Bulldogs cannot be named "Uga". Please choose a different name.')
      return
    }
    if (form.microchipID)
    {
        const checkResponse = await request.get(`/api/microchip/check/${form.microchipID}`);
        if (checkResponse.data > 0)
        {
          errorMsg("Microchip ID is not unique and is already existed in our record!");
          return;
        }
    }
    loading.value = true
    try 
    {
      const formData = {
        age: form.age,
        alterationStatus:form.alterationStatus,
        breed: form.breed,
        description: form.description,
        manufactureName: form.manufactureName,
        microchipID: form.microchipID,
        name: form.name,
        phonenumber: form.phonenumber,
        sex: form.sex,
        surrenderDate: formatDate(form.surrenderDate),
        surrenderType: form.surrenderType
      }

      const response = await request.post(`/api/dog/addwithdetails`, formData);
      const dogid = response.data
      console.log(response)
      if (dogid >= 0)
      {
        router.push({
        path: '/dogDetails',
        query: {
          dogID: dogid}
        })
        ElMessage.success("Dog is added successfully !")
      }
      else
      {
        ElMessage.error("Failed to add dog");
      }
    } catch (err) {
      ElMessage.error(err?.response?.data?.message || 'Failed to add dog')

    } finally {
      loading.value = false
    }
  })
}

const onReset = () => {
  dogFormRef.value.resetFields()
  mixedSelected.value = false
  unknownSelected.value = false
  Object.assign(rules, baseRules);
}

function formatDate(date) {
  const d = new Date(date);
  const year = d.getFullYear();
  const month = String(d.getMonth() + 1).padStart(2, '0'); // Months are 0-indexed
  const day = String(d.getDate()).padStart(2, '0');
  return `${year}-${month}-${day}`;
}
const goToDashboard = () => router.push('/dashboard')
</script>

<style scoped>
.box-card {
  margin: 20px auto;
  padding: 20px;
}
</style>