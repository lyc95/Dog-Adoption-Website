<template>
  <div class="viewdetails">
    View Details
  </div>
</template>

<script setup>
import { onMounted } from 'vue'
import { useRoute } from 'vue-router'

onMounted(() => {
  const route = useRoute()
  console.log(' 接收到的dogID:', route.query.dogID)

})
</script>

<style scoped>
.viewdetails {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background-size: cover;
  background-image: url('@/assets/imgs/background.png');
}

</style>