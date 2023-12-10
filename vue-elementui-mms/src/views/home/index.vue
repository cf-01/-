<template>
  <div>
    <div class="welcome">
      <span>欢迎您，</span>
      <span>{{selectedStaff.name}}</span>
    </div>
    <schedule-calendar :month="currentMonth" :staff="selectedStaff" :isShowSelect="isShowSelect"></schedule-calendar>
  </div>
</template>
<script>

import ScheduleCalendar from "@/views/system/ScheduleCalendar/index.vue";

export default {
  name: 'Home',
  components: {
    ScheduleCalendar
  },
  created() {
    this.selectedStaff = JSON.parse(localStorage.getItem('staff'))
  },
  data() {
    return {
      selectedStaff: {
        id: 0
      },
      currentMonth: new Date(),
      isShowSelect: false,
      adminStaff:{
        id:1,
        name:''
      }
    }
  }
}
</script>

<style>
  .welcome {
    padding: 20px 20px 20px 0;
  }
</style>
