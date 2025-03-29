<template>
  <div class="login-container">
    <el-form
        ref="loginForm"
        :model="form"
        :rules="rules"
        @keyup.enter="handleLogin"
    >
      <h2 class="title">Burdell’s Devoted Dogs Database</h2>

      <!-- 邮箱输入 -->
      <el-form-item prop="email">
        <el-input
            v-model="form.email"
            placeholder="Enter Email"
            prefix-icon="User"
        />
      </el-form-item>

      <!-- 密码输入 -->
      <el-form-item prop="password">
        <el-input
            v-model="form.password"
            type="password"
            placeholder="Enter Password"
            prefix-icon="Lock"
            show-password
        />
      </el-form-item>

      <!-- 登录按钮 -->
      <el-form-item>
        <el-button
            type="primary"
            :loading="loading"
            @click="handleLogin"
            style="width: 100%"
        >
          {{ loading ? 'logging...' : 'login' }}
        </el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script setup>
import { ref, reactive } from 'vue'
import { ElMessage } from 'element-plus'
import { useRouter } from 'vue-router'
import { login } from '@/api/auth'

const router = useRouter()
const loading = ref(false)

// 表单数据模型
const form = reactive({
  email: '',
  password: ''
})

// 验证规则（参考[5]()）
const rules = reactive({
  email: [
    { required: true, message: 'Email is empty!', trigger: 'blur' },
    { type: 'email', message: 'Please enter a legitimate e-mail!', trigger: ['blur', 'change'] }
  ],
  password: [
    { required: true, message: 'Password is empty!', trigger: 'blur' }
  ]
})

// 登录逻辑（参考[1]()[8]()）
const handleLogin = async () => {
  try {
    loading.value  = true
    const res = await login({
      email: form.email,
      password: form.password
    })

    if (res.code  === '200') {
      ElMessage.success('login success')
      await router.push('/dashboard')
    } else {
      ElMessage.error(res.msg  || 'login fail')
    }
  } catch (error) {
    ElMessage.error('Interface call exception')
  } finally {
    loading.value  = false
  }
}
</script>

<style scoped>
.login-container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background-size: cover;
  background-image: url('@/assets/imgs/background.png');
}

.el-form {
  width: 400px;
  padding: 40px;
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 12px rgba(0,0,0,0.1);
}

.title {
  text-align: center;
  margin-bottom: 30px;
  color: #409eff;
}
</style>