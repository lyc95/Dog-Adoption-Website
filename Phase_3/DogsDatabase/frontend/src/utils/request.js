import axios from 'axios'

const service = axios.create({
    baseURL: 'http://localhost:8080',
    timeout: 5000
})

// 请求拦截器
service.interceptors.request.use(config  => {
    // 可在此处添加token等全局headers
    return config
})

// 响应拦截器（适配Result结构）
service.interceptors.response.use(
    response => {
        const res = response.data
        if (res.code  === '200') {
            return res
        } else {
            return Promise.reject(res)
        }
    },
    error => {
        return Promise.reject(error)
    }
)

export default service