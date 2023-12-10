<template>
  <div>
    <el-calendar v-model="currentDate">
      <template slot="dateCell" slot-scope="{ data }">
        <div :class="data.isSelected ? 'is-selected' : ''">
          {{ data.day.split("-").slice(2).join("-") }}
          <el-dropdown style="margin-left: 5px" @command="handleCommand" v-if="data.type === 'current-month' && isShowSelect">
            <span class="el-dropdown-link">
              排班<i class="el-icon-arrow-down el-icon--right"></i>
            </span>
            <el-dropdown-menu slot="dropdown">
              <el-dropdown-item :command="beforeHandleCommand(1, data.day)">上午</el-dropdown-item>
              <el-dropdown-item :command="beforeHandleCommand(2, data.day)">下午</el-dropdown-item>
              <el-dropdown-item :command="beforeHandleCommand(3, data.day)">晚上</el-dropdown-item>
            </el-dropdown-menu>
          </el-dropdown>
        </div>
        <div
          style="width: 100%;"
          v-for="(item, index) in scheduleData"
          :key="index"
        >
          <div v-if="item.workDate.indexOf(data.day) !== -1 && isShowSelect" style="margin-top: 15px;">
            <el-popconfirm
              title="确定删除该排班吗？"
              @confirm="deleteWork(item)"
            >
              <div slot="reference">
                <span style="font-size: 15px;padding: 5px;background-color:#b8b7b7;" v-if="item.workMsg === 1">上午</span>
                <span style="font-size: 15px;padding: 5px;background-color:#b8b7b7;" v-else-if="item.workMsg === 2">下午</span>
                <span style="font-size: 15px;padding: 5px;background-color:#b8b7b7;" v-else-if="item.workMsg === 3">晚上</span>
              </div>
            </el-popconfirm>
          </div>
          <div v-if="item.workDate.indexOf(data.day) !== -1 && !isShowSelect" style="margin-top: 15px;">
              <div slot="reference">
                <span style="font-size: 15px;padding: 5px;background-color:#b8b7b7;" v-if="item.workMsg === 1">上午</span>
                <span style="font-size: 15px;padding: 5px;background-color:#b8b7b7;" v-else-if="item.workMsg === 2">下午</span>
                <span style="font-size: 15px;padding: 5px;background-color:#b8b7b7;" v-else-if="item.workMsg === 3">晚上</span>
              </div>
          </div>
        </div>
      </template>
    </el-calendar>
  </div>
</template>

<script>
import {getWork, addWork, deleteWork} from "@/api/work";


export default {
  props: {
    month: {
      type: Date,
      required: true
    },
    isShowSelect: {
      type: Boolean,
      default: true
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
      },
      adminStaff:{}
    };
  },
  created() {
    this.fetchSchedules();
  },
  mounted() {
    this.adminStaff = JSON.parse(localStorage.getItem('staff'))
  },
  methods: {
    fetchSchedules() {
      const params = {
        staffId: this.staff.id+'',
        year:'2023',
        month: '12'
      };
      getWork(params).then(res => {
        this.scheduleData = res.data
      });
    },
    handleCommand(command) {
      // 添加排班 或者修改排班
      addWork({
        staffId: this.staff.id,
        workDate: command.day,
        workMsg: command.command,
        workStaffId: this.adminStaff.id
      }).then(res => {
        if (res.code === 200) {
          this.$message.success(res.message);
        }else {
          this.$message.error(res.message);
        }
        this.fetchSchedules();
      });
    },
    beforeHandleCommand(command,day) {
      return {
        'command': command,
        'day': day
      }
    },
    deleteWork(value) {
      deleteWork(value.id).then(res => {
        if (res.code === 200) {
          this.$message.success(res.message);
        }else {
          this.$message.error(res.message);
        }
        this.fetchSchedules();
      });
    }
  },

};
</script>
