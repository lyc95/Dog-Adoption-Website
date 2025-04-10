<template>
  <el-card class="box-card">
    <h2 class="mb-4 text-xl font-semibold">Add Dog</h2>

    <el-form
        ref="dogFormRef"
        :model="form"
        :rules="rules"
        label-width="180px"
        class="w-full max-w-3xl"
    >
      <!-- Name -->
      <el-form-item label="Name" prop="name">
        <el-input v-model.trim="form.name" placeholder="Enter name" />
      </el-form-item>

      <!-- Breed -->
      <el-form-item label="Breed" prop="breed">
        <div class="flex items-start gap-4">
          <el-select
              v-model="form.breed"
              multiple
              collapse-tags
              placeholder="Select breed"
              :disabled="isMixedOrUnknownSelected"
              class="flex-1"
          >
            <el-option
                v-for="item in breedOptions"
                :key="item"
                :label="item"
                :value="item"
            />
          </el-select>
          <el-checkbox v-model="mixedOrUnknown" @change="handleBreedToggle">
            Mixed / Unknown
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
      <el-form-item label="Alteration Status" prop="altered">
        <el-select v-model="form.altered" placeholder="Select">
          <el-option label="Yes" value="Yes" />
          <el-option label="No" value="No" />
        </el-select>
      </el-form-item>

      <!-- Age -->
      <el-form-item label="Age (Years)" prop="age">
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
        <el-input v-model.trim="form.microchip_id" />
      </el-form-item>

      <!-- Vendor Name -->
      <el-form-item label="Vendor Name" prop="vendor_name">
        <el-select v-model="form.vendor_name" placeholder="Select vendor">
          <el-option
              v-for="item in vendorOptions"
              :key="item"
              :label="item"
              :value="item"
          />
        </el-select>
      </el-form-item>

      <!-- Surrender Date -->
      <el-form-item label="Surrender Date" prop="surrender_date">
        <el-date-picker
            v-model="form.surrender_date"
            type="date"
            placeholder="Pick a day"
            format="YYYY-MM-DD"
        />
      </el-form-item>

      <!-- Source -->
      <el-form-item label="Individual / Animal Control" prop="source">
        <el-select v-model="form.source" placeholder="Select source">
          <el-option label="Individual" value="Individual" />
          <el-option label="Animal Control" value="Animal Control" />
        </el-select>
      </el-form-item>

      <!-- Phone -->
      <el-form-item label="Surrender's Phone" prop="phone">
        <el-input v-model.trim="form.phone" placeholder="e.g. 404‑555‑1234" />
      </el-form-item>

      <!-- Actions -->
      <el-form-item>
        <el-button
            type="primary"
            :loading="loading"
            @click="onSubmit"
        >
          Add Dog
        </el-button>
        <el-button @click="onReset">Reset</el-button>
        <el-button @click="goToDogDetails">Dog Details</el-button>
        <el-button @click="goToDashboard">Back to Dashboard</el-button>
      </el-form-item>
    </el-form>
  </el-card>
</template>

<script setup>
import { ref, reactive, computed } from 'vue'
import { useRouter } from 'vue-router'
import { ElMessage } from 'element-plus'
import axios from 'axios'

const router = useRouter()

// ----------------------- state -----------------------
const form = reactive({
  name: '',
  breed: [],
  sex: '',
  altered: '',
  age: null,
  description: '',
  microchip_id: '',
  vendor_name: '',
  surrender_date: '',
  source: '',
  phone: ''
})

const mixedOrUnknown = ref(false)

const breedOptions = [
  'Affenpinscher',
  'Poodle',
  'Vizsla',
  'Beagle',
  'Bulldog',
  'Golden Retriever'
]

const vendorOptions = [
  'PetSmart',
  'Best Friends Shelter',
  'Fulton County Control',
  'Private Owner'
]

// ----------------------- computed -----------------------
const isMixedOrUnknownSelected = computed(() => mixedOrUnknown.value)

// ----------------------- validation rules -----------------------
const rules = {
  name: [
    { required: true, message: 'Name is required', trigger: 'blur' }
  ],
  breed: [
    { type: 'array', required: true, message: 'Please select at least one breed', trigger: 'change' }
  ],
  sex: [
    { required: true, message: 'Please select sex', trigger: 'change' }
  ],
  altered: [
    { required: true, message: 'Alteration status is required', trigger: 'change' }
  ],
  age: [
    { required: true, type: 'number', message: 'Age is required', trigger: 'blur' }
  ],
  vendor_name: [
    { required: true, message: 'Vendor is required', trigger: 'change' }
  ],
  surrender_date: [
    { required: true, message: 'Surrender date is required', trigger: 'change' }
  ],
  source: [
    { required: true, message: 'Source is required', trigger: 'change' }
  ],
  phone: [
    { pattern: /^\d{3}[- ]?\d{3}[- ]?\d{4}$/,
      message: 'Please enter a valid phone number',
      trigger: 'blur' }
  ]
}

// ----------------------- refs -----------------------
const dogFormRef = ref()
const loading = ref(false)

// ----------------------- methods -----------------------
const handleBreedToggle = () => {
  if (mixedOrUnknown.value) {
    form.breed = ['Mixed']
  } else {
    form.breed = []
  }
}

const hasAvailableSpace = true // TODO: Replace with backend availability check

const onSubmit = () => {
  dogFormRef.value.validate(async valid => {
    if (!valid) return

    // business rule: Bulldog cannot be named Uga
    const isBulldog = form.breed.includes('Bulldog') || form.breed.includes('Mixed') && form.breed.includes('Bulldog')
    const isUga = form.name.trim().toLowerCase() === 'uga'
    if (isBulldog && isUga) {
      ElMessage.error('Bulldogs cannot be named "Uga". Please choose a different name.')
      return
    }

    if (!hasAvailableSpace) {
      ElMessage.error('No space available for new dogs. Please try again later.')
      return
    }

    loading.value = true
    try {
      // Replace with real endpoint
      await axios.post('/api/dogs', { ...form })
      ElMessage.success('Dog added successfully!')
      router.push('/dogDetails')
    } catch (err) {
      ElMessage.error(err?.response?.data?.message || 'Failed to add dog')
    } finally {
      loading.value = false
    }
  })
}

const onReset = () => {
  dogFormRef.value.resetFields()
  mixedOrUnknown.value = false
}

const goToDogDetails = () => router.push('/dogDetails')
const goToDashboard = () => router.push('/dashboard')
</script>

<style scoped>
.box-card {
  margin: 20px auto;
  padding: 20px;
}
</style>