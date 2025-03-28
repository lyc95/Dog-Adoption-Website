<template>
  <div>
    <el-row>
      <el-button>默认按钮</el-button>
      <el-button type="primary">主要按钮</el-button>
      <el-button type="success">成功按钮</el-button>
      <el-button type="info">信息按钮</el-button>
      <el-button type="warning">警告按钮</el-button>
      <el-button type="danger">危险按钮</el-button>
    </el-row>
    <div>
      <el-icon size="25"><Delete /></el-icon>
      <div class="flex gap-4 mb-4">
        <span>Using attributes</span>
        <el-input
            v-model="input1"
            style="width: 240px"
            placeholder="Pick a date"
            :suffix-icon="Calendar"
        />
        <el-input
            v-model="input2"
            style="width: 240px"
            placeholder="Type something"
            :prefix-icon="Search"
        />
      </div>
    </div>
  </div>
</template>

<script setup>
import {Calendar, Search} from '@element-plus/icons-vue'

</script>