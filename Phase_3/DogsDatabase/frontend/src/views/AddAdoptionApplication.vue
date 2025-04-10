<template>
  <el-card shadow="hover">
    <h2 style="margin-bottom: 20px">New Adoption Application</h2>

    <el-form :model="form" :rules="rules" ref="formRef" label-width="140px">
      <!-- Email -->
      <el-form-item label="Email Address" prop="email">
        <el-input v-model="form.email" @blur="handleEmailBlur" />
      </el-form-item>
      <!-- Application Date -->
      <el-form-item label="Application Date" prop="date">
        <el-date-picker
          v-model="form.date"
          type="date"
          placeholder="Pick a date"
          style="width: 100%"
        />
      </el-form-item>

      <!-- Optional Fields -->
      <el-divider content-position="left">Adopter Information</el-divider>

      <el-form-item label="First Name" prop="firstname" >
        <el-input v-model="form.firstname" :disabled="isExistingUser"/>
      </el-form-item>

      <el-form-item label="Last Name" prop="lastname">
        <el-input v-model="form.lastname" :disabled="isExistingUser"/>
      </el-form-item>

      <el-form-item label="Street" prop="street">
        <el-input v-model="form.street" :disabled="isExistingUser"/>
      </el-form-item>

      <el-form-item label="City" prop="city">
        <el-input v-model="form.city" :disabled="isExistingUser"/>
      </el-form-item>

      <el-form-item label="State" prop="state">
        <el-input v-model="form.state" :disabled="isExistingUser"/>
      </el-form-item>

      <el-form-item label="Zip Code" prop="zipcode">
        <el-input v-model="form.zipcode" :disabled="isExistingUser"/>
      </el-form-item>

      <el-form-item label="Phone Number" prop="phone_number">
        <el-input v-model="form.phone_number" :disabled="isExistingUser"/>
      </el-form-item>

      <el-form-item label="Household Size" prop="household_size">
        <el-input-number v-model="form.household_size" :min="1" :disabled="isExistingUser"/>
      </el-form-item>

      <el-form-item>
        <el-button type="primary" @click="handleSubmit">Submit</el-button>
        <el-button @click="resetForm">Reset</el-button>
        <el-button type="success" @click="backToDashBoard">Back to Dashboard</el-button>
      </el-form-item>
    </el-form>
  </el-card>
</template>
<script setup>
import { reactive, ref } from 'vue'
import { ElMessage } from 'element-plus'
import request from "@/utils/request.js";
import { useRouter} from 'vue-router';
const router = useRouter()
const formRef = ref()
const isExistingUser = ref(false)

const form = reactive({
  email: '',
  date: null,
  firstname: '',
  lastname: '',
  street: '',
  city: '',
  state: '',
  zipcode: '',
  phone_number: '',
  household_size: 1
})

const baseRules = {
  email: [
    { required: true, message: 'Email is required', trigger: 'blur' },
    { type: 'email', message: 'Invalid email', trigger: 'blur' }
  ],
  date: [{ required: true, message: 'Application date is required', trigger: 'change' }]
}

const extraRules = {
  firstname: [{ required: true, message: 'First name is required', trigger: 'blur' }],
  lastname: [{ required: true, message: 'Last name is required', trigger: 'blur' }],
  street: [{ required: true, message: 'Street is required', trigger: 'blur' }],
  city: [{ required: true, message: 'City is required', trigger: 'blur' }],
  state: [{ required: true, message: 'State is required', trigger: 'blur' }],
  zipcode: [{ required: true, message: 'Zip code is required', trigger: 'blur' }],
  phone_number: [{ required: true, message: 'Phone number is required', trigger: 'blur' }],
  household_size: [{ required: true, message: 'Household size is required', trigger: 'blur' }]
}

const rules = reactive({ ...baseRules })

const handleEmailBlur = async () => {
  const email = form.email.trim().toLowerCase()

  if (!email) return

  try{
    const response = await request.get(`/api/adopter/${email}`)
    /* Fetch emails from backendAPI */
    if (response.data)
    {
      // Email in the date base already
      isExistingUser.value = true
      /* Assign the value to form */
      form.email = response.data.email
      form.phone_number = response.data.phone_number
      form.household_size = response.data.household_size
      form.firstname = response.data.firstname
      form.lastname = response.data.lastname
      form.street = response.data.street
      form.city = response.data.city
      form.state = response.data.state
      form.zipcode = response.data.zipcode
      Object.assign(rules, baseRules)
      /* Revalidate the rules */
      formRef.value.validate((valid) => {})
      ElMessage.success('Existing user found. Form auto-filled.')
    }
    else
    {
      // This is new email

      if (isExistingUser.value == true)
      {
        resetForm()
        ElMessage.info('New email. Please fill in all required information.')
      }
      isExistingUser.value = false
      Object.assign(rules, { ...baseRules, ...extraRules })
    }

  } catch (error) {
    ElMessage.error('Error checking email. Please try again.')
  }
}

const handleSubmit = async () => {
  const isValid = await new Promise((resolve) => {
    formRef.value.validate((valid) => {
      resolve(valid)
    })
  })
  if (isValid) {
    const dateFormated = formatDate(form.date);
    form.date = dateFormated
    try{
      const response = await request.get(`/api/adoption-application/check/${form.email}/${form.date}`)
      if (response.data > 0)
      {
        /* duplicate application found */
        ElMessage.error('Each applicant can only submit one application per day.')
      }
      else
      {
        await request.post(`/api/adoption-application/add`, form);
        ElMessage.success("New Adoption application is successful!");
        /* Go back to dashboard */
        backToDashBoard();
      }
    }
    catch (error) {
      ElMessage.error('Error checking on fetching datat from API')
    }
  }
  else 
  {
    ElMessage.error('Please complete the required fields.')
  }
}

const resetForm = () => {
  Object.assign(form, {
    email: form.email,
    date: form.date,
    firstname: '',
    lastname: '',
    street: '',
    city: '',
    state: '',
    zipcode: '',
    phone_number: '',
    household_size: 1
  })
  formRef.value?.clearValidate()
}
function formatDate(date) {
  const d = new Date(date);
  const year = d.getFullYear();
  const month = String(d.getMonth() + 1).padStart(2, '0'); // Months are 0-indexed
  const day = String(d.getDate()).padStart(2, '0');
  return `${year}-${month}-${day}`;
}
const backToDashBoard = () => {
  router.push({
    path: '/dashboard'
  })
}
</script>
