import { createRouter, createWebHistory } from 'vue-router'
import ReportDashBoard from '@/views/ReportDashBoard.vue'
import DefaultReport from '@/views/DefaultReport.vue'
import AnimalControlReport from '@/views/AnimalControlReport.vue'
import MonthlyAdoptionReport from '@/views/MonthlyAdoptionReport.vue'
import ExpenseAnalysis from '@/views/ExpenseAnalysis.vue'
import VolunteerLookup from '@/views/VolunteerLookup.vue'
import VolunteerBirthdays from '@/views/VolunteerBirthdays.vue'
import DogDetails from '@/views/DogDetails.vue'
const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {path: '/login', name: 'login', component: import('../views/Login.vue')},
    {path: '/dashboard', name: 'Dash Board', component: import('../views/DashBoard.vue')},
    {path: '/dogDetails', name: 'Dog Details', component: import('../views/DogDetails.vue')},
    {path: '/addDog', name: 'Add Dog', component: import('../views/AddDog.vue')},
    {path: '/addAdoptionApplication', name: 'Add Adoption Application', component: import('../views/AddAdoptionApplication.vue')},
    {path: '/adoptionApplicationReview', name: 'Adoption Application Review', component: import('../views/AdoptionApplicationReview.vue')},
    {path: '/addAdoption', name: 'Add Adoption', component: import('../views/AddAdoption.vue')},
    {
      path: '/report', name: 'report', component: ReportDashBoard,
      children: 
      [
        { path: '', component : DefaultReport },
        { path: 'acr', component : AnimalControlReport },
        { path: 'mar', component : MonthlyAdoptionReport },
        { path: 'ea', component : ExpenseAnalysis },
        { path: 'vl', component : VolunteerLookup },
        { path: 'vb', component : VolunteerBirthdays }
      ]
    },
    // {path: '/dogdetails/:dogid', name: 'dogdetails', component: DogDetails},
    {path: '/example', name: 'example', component: import('../views/Example.vue')},
    {path: '/notfound', name: 'notfound', component: import('../views/404.vue')},
    {path: '/:pathMatch(.*)', redirect: '/notfound'},
  ],
})

export default router
