import { createRouter, createWebHistory } from 'vue-router'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {path: '/dashboard', name: 'Dash Board', component: import('../views/DashBoard.vue')},
    {path: '/example', name: 'example', component: import('../views/Example.vue')},
    {path: '/login', name: 'login', component: import('../views/Login.vue')},
    {path: '/notfound', name: 'notfound', component: import('../views/404.vue')},
    {path: '/:pathMatch(.*)', redirect: '/notfound'},
  ],
})

export default router
