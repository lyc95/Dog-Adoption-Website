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
<!--    <div>-->
<!--      <el-icon size="25"><Delete /></el-icon>-->
<!--      <div class="flex gap-4 mb-4">-->
<!--        <span>Using attributes</span>-->
<!--        <el-input-->
<!--            v-model="input1"-->
<!--            style="width: 240px"-->
<!--            placeholder="Pick a date"-->
<!--            :suffix-icon="Calendar"-->
<!--        />-->
<!--        <el-input-->
<!--            v-model="input2"-->
<!--            style="width: 240px"-->
<!--            placeholder="Type something"-->
<!--            :prefix-icon="Search"-->
<!--        />-->
<!--      </div>-->
<!--    </div>-->

    <el-table ref="tableRef" row-key="date" :data="tableData" style="width: 100%">

      <el-table-column prop="name" label="Name" width="180" />
      <el-table-column prop="address" label="Address" :formatter="formatter" />

      <el-table-column
          prop="tag"
          label="Tag"
          width="100"
          :filters="[
        { text: 'Available', value: 'Available' },
        { text: 'Unavailable', value: 'Unavailable' },
      ]"
          :filter-method="filterTag"
          filter-placement="bottom-end"
      >
        <template #default="scope">
          <el-tag
              :type="scope.row.tag === 'Available' ? 'success' : 'danger'"
              disable-transitions
          >{{ scope.row.tag }}</el-tag
          >
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script setup>
import { Calendar, Search } from '@element-plus/icons-vue'


// 标签过滤（保留核心逻辑）
const filterTag = (value, row) => {
  return row.tag  === value
}


// 表格数据（移除类型注解）
const tableData = [
  {
    date: '2016-05-03',
    name: 'Tom',
    address: 'No. 189, Grove St, Los Angeles',
    tag: 'Available',
  },
  {
    date: '2016-05-02',
    name: 'Tom',
    address: 'No. 189, Grove St, Los Angeles',
    tag: 'Unavailable',
  },
  {
    date: '2016-05-04',
    name: 'Tom',
    address: 'No. 189, Grove St, Los Angeles',
    tag: 'Available',
  },
  {
    date: '2016-05-01',
    name: 'Tom',
    address: 'No. 189, Grove St, Los Angeles',
    tag: 'Unavailable',
  },
]

</script>