<template>
  <div>
    <el-calendar v-model="currentDate">
      <template slot="dateCell" slot-scope="{ data }">
        <p :class="data.isSelected ? 'is-selected' : ''">
          {{ data.day.split("-").slice(2).join("-") }}
        </p>
        <div
          style="width: 100%;"
          v-for="(item, index) in scheduleData"
          :key="index"
        >
          <div v-if="item.workDate.indexOf(data.day) !== -1" style="margin-top: 10px;padding: 5px;background-color:#b8b7b7;">
            <span style="font-size: 15px;" v-if="item.workMsg === 1">上午</span>
            <span style="font-size: 15px;" v-if="item.workMsg === 2">下午</span>
            <span style="font-size: 15px;" v-if="item.workMsg === 3">晚上</span>
          </div>
        </div>
      </template>
    </el-calendar>

    <el-dialog title="添加排班" :visible.sync="addDialogVisible">
      <el-form ref="addForm" :model="addForm" label-width="80px">
        <el-form-item label="日期">
          {{ addForm.date }}
        </el-form-item>
        <el-form-item label="时间段">
          <el-radio-group v-model="addForm.time">
            <el-radio :label="1">上午</el-radio>
            <el-radio :label="2">下午</el-radio>
            <el-radio :label="3">晚上</el-radio>
          </el-radio-group>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="addDialogVisible = false">取消</el-button>
        <el-button type="primary" @click="addSchedule">确定</el-button>
      </span>
    </el-dialog>
  </div>
</template>

<script>
import {getWork} from "@/api/work";

export default {
  props: {
    month: {
      type: Date,
      required: true
    },
    staff: {
      type: Object,
      required: true
    }
  },
  data() {
    return {
      currentDate: this.month,
      range: [this.month, new Date(this.month.getFullYear(), this.month.getMonth() + 1, 0)],
      scheduleData: [],
      addDialogVisible: false,
      addForm: {
        date: null,
        time: 1 // 默认选择上午
      }
    };
  },
  created() {
    this.fetchSchedules();
  },
  methods: {
    fetchSchedules() {
      const params = {
        staffId: this.staff.id+'',
        year:'2023',
        month: '12'
      };
      console.log(params)
      getWork(params).then(res => {
        this.scheduleData = res.data
      });
    },
    handleDayClick(date) {
      if (this.isScheduleExist(date)) {
        // 如果该日期已经有排班，则不进行任何操作
        return;
      }
      this.addForm.date = date.toLocaleDateString();
      this.addDialogVisible = true;
    },
    addSchedule() {
      const params = {
        staffId: this.staff.id,
        workDate: this.addForm.date,
        workMsg: this.addForm.time
      };
      console.log(params)
    },
    isScheduleExist(date) {
      return this.schedules.some(item => item.date.toLocaleDateString() === date.toLocaleDateString());
    }
  }
};
</script>
