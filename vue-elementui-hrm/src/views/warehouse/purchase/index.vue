<template>
  <div class="manage">
    <el-dialog
      :title="dialogForm.type === 'add' ? '新增进货' : '更新进货'"
      :visible.sync="dialogForm.isShow"
    >
      <el-form ref="form" label-width="100px" :model="dialogForm.formData" size="mini">
        <!--   选择商品    -->

        <el-form-item label="商品" label-width="140px" style="width: 450px" prop="itemId">
          <el-select
            placeholder="请选择商品"
            v-model="dialogForm.formData.itemId"
          >
            <el-option
              v-for="option in items"
              :key="option.itemId"
              :label="option.itemName"
              :value="option.id"
            />
          </el-select>
        </el-form-item>

        <el-form-item label="进货数量" label-width="140px" style="width: 450px" prop="itemNums">
          <el-input-number v-model="dialogForm.formData.itemNums" :min="1" label="请输入进货数量"></el-input-number>
        </el-form-item>

        <el-form-item label="进货时间" label-width="140px" style="width: 450px" prop="itemPrice">
          <el-date-picker
            v-model="dialogForm.formData.stockDate"
            type="datetime"
            placeholder="选择日期时间">
          </el-date-picker>
        </el-form-item>

        <el-form-item label="进货单价" label-width="140px" style="width: 450px" prop="stockPrice">
          <el-input
            placeholder="请输入进货单价"
            v-model.trim="dialogForm.formData.stockPrice"
          />
        </el-form-item>
      </el-form>

      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogForm.isShow = false">取消</el-button>
        <el-button type="primary" @click="confirm">确定</el-button>
      </div>
    </el-dialog>

    <!--操作-->
    <div style="margin-bottom: 10px">
      <el-upload :action="importApi" :headers="headers" accept="xlsx" :show-file-list="false"
                 :on-success="handleImportSuccess" :multiple="false"
                 style="display:inline-block">
        <el-button type="success" size="mini"
        >导入 <i class="el-icon-bottom"></i>
        </el-button>
      </el-upload>
      <el-button type="warning" size="mini" @click="exportData" style="margin-left: 10px"
      >导出 <i class="el-icon-top"></i>
      </el-button>
      <el-button type="primary" @click="handleAdd" size="mini"
      >新增 <i class="el-icon-circle-plus-outline"></i>
      </el-button>
      <el-popconfirm
        style="margin-left: 10px"
        confirm-button-text='确定'
        cancel-button-text='我再想想'
        icon="el-icon-info"
        icon-color="red"
        title="你确定删除吗？"
        @confirm="handleDeleteBatch"
      >
        <el-button type="danger" size="mini" slot="reference"
        >批量删除 <i class="el-icon-remove-outline"></i>
        </el-button>
      </el-popconfirm>
    </div>

    <!------------------------- 搜索 -------------------------------->
    <div class="manage-header">
      <el-form label-width="auto" :model="searchForm.formData"
               :inline="true" size="mini">
        <el-form-item label="商品名" prop="itemName">
          <el-input
            placeholder="请输入商品名"
            v-model.trim="searchForm.formData.itemName"
            prefix-icon="el-icon-search"
          />
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="search" size="mini">搜索 <i class="el-icon-search"/></el-button>
          <el-button type="danger" @click="reset" size="mini">重置 <i class="el-icon-refresh-left"/></el-button>
        </el-form-item>
      </el-form>
    </div>
    <!------------------------ 数据表格 ----------------------->
    <div class="common-table">
      <el-table
        :data="table.tableData"
        height="85%"
        border
        stripe
        row-key="id"
        :header-cell-style="{background: '#eef1f6',color: '#606266',
        textAlign:'center',fontWeight:'bold',borderWidth:'3px'}"
        @selection-change="handleSelectionChange"
      >
        <el-table-column type="selection" width="50" align="center"/>
        <el-table-column prop="id" label="进货编号" min-width="80" align="center"/>
        <el-table-column prop="itemId" label="商品编号" min-width="80" align="center"/>
        <el-table-column prop="itemName" label="商品名称" min-width="125" align="center"/>
        <el-table-column prop="stockDate" label="进货时间" min-width="125" align="center">
          <template slot-scope="scope">
            {{ scope.row.stockDate | formatDate }}
          </template>
        </el-table-column>
        <el-table-column prop="itemNums" label="进货数量" min-width="180" align="center"/>
        <el-table-column prop="stockPrice" label="进货单价(元)" min-width="125" align="center"/>
        <el-table-column prop="stockSumPrice" label="进货总价(元)" min-width="125" align="center"/>
        <el-table-column label="操作" width="190" fixed="right" align="center">
          <template slot-scope="scope">
            <el-button size="mini" type="primary" @click="handleEdit(scope.row)"
            >编辑 <i class="el-icon-edit"></i
            ></el-button>
            <el-popconfirm
              style="margin-left:10px;margin-right:10px"
              confirm-button-text='确定'
              cancel-button-text='我再想想'
              icon="el-icon-info"
              icon-color="red"
              title="你确定删除吗？"
              @confirm="handleDelete(scope.row.id)"
            >
              <el-button size="mini" type="danger" slot="reference"
              >删除 <i class="el-icon-remove-outline"></i
              ></el-button>
            </el-popconfirm>
          </template>
        </el-table-column>
      </el-table>
      <el-pagination
        class="pager"
        layout="total,sizes,prev,pager,next,jumper"
        :page-size="table.pageConfig.size ? table.pageConfig.size : 10"
        :page-sizes="[5, 10, 15, 20]"
        :total="table.pageConfig.total"
        :current-page.sync="table.pageConfig.current"
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
      ></el-pagination>
    </div>
  </div>
</template>
<script>
import {getExportApi, getImportApi, getList, deleteBatch, edit, deleteOne, add} from '@/api/stock'
import {getAll} from '@/api/item'
import {mapState} from 'vuex'

export default {
  name: 'Leave',
  data() {
    return {
      searchForm: {
        deptList: [],
        formData: {}
      },
      table: {
        tableData: [],
        pageConfig: {
          total: 10, // 记录总数
          current: 1, // 起始页
          size: 10 // 每页展示的记录数
        }
      },
      dialogForm: {
        isShow: false,
        type: '',
        formData: {},
        deptList: []
      },
      items:[]
    }
  },
  filters: {
    formatDate(value) {
      if (!value) return '';
      const date = new Date(value);
      const year = date.getFullYear();
      const month = (date.getMonth() + 1).toString().padStart(2, '0');
      const day = date.getDate().toString().padStart(2, '0');
      const hour = date.getHours().toString().padStart(2, '0');
      const minute = date.getMinutes().toString().padStart(2, '0');
      const second = date.getSeconds().toString().padStart(2, '0');
      return `${year}-${month}-${day} ${hour}:${minute}:${second}`;
    }
  },
  computed: {
    ...mapState('token', ['token']),
    headers() {
      return {token: this.token}
    },
    // 获取导入数据的接口
    importApi() {
      return getImportApi()
    }
  },
  mounted() {
    this.getItem()
  },
  methods: {
    getItem() {
      getAll().then(response => {
        if (response.code === 200) {
          this.items = response.data
        }
      })
    },
    handleSizeChange(size) {
      this.table.pageConfig.size = size
      this.loading()
    },
    handleCurrentChange(current) {
      this.table.pageConfig.current = current
      this.loading()
    },
    search() {
      this.loading()
    },
    // 重置搜索表单
    reset() {
      this.searchForm.formData = {}
      this.loading()
    },
    // 将数据渲染到模板
    loading() {
      getList({
        current: this.table.pageConfig.current,
        size: this.table.pageConfig.size,
        itemName: this.searchForm.formData.itemName,
      }).then(response => {
        if (response.code === 200) {
          this.table.tableData = response.data.list
          this.table.pageConfig.total = response.data.total
        } else {
          this.$message.error(response.message)
        }
      })
    },
    // 导出数据
    exportData() {
      window.open(getExportApi())
    },
    handleImportSuccess(response) {
      if (response.code === 200) {
        this.$message.success('数据导入成功！')
        this.loading()
      } else {
        this.$message.error('数据导入失败！')
      }
    },
    // 点击新增按钮，弹出对话框
    handleAdd() {
      this.dialogForm.isShow = true
      this.dialogForm.type = 'add'
      this.dialogForm.formData = {}
    },
    confirm() {
      // 通过type来判断是新增还是编辑
      if (this.dialogForm.type === 'add') {
        add(this.dialogForm.formData).then((response) => {
          if (response.code === 200) {
            this.$message.success('添加成功！')
            this.dialogForm.isShow = false
            this.loading()
          } else {
            this.$message.error('添加失败！')
          }
        })
      } else {
        edit(this.dialogForm.formData).then((response) => {
          if (response.code === 200) {
            this.$message.success('修改成功！')
            this.dialogForm.isShow = false
            this.loading()
          } else {
            this.$message.error('修改失败！')
          }
        })
      }
    },
    handleDelete(id) {
      deleteOne(id).then(
        response => {
          if (response.code === 200) {
            this.$message.success('删除成功！')
            this.loading()
          } else {
            this.$message.error('删除失败！')
          }
        }
      )
    },
    handleSelectionChange(list) {
      this.ids = list.map(item => item.id)
    },
    handleDeleteBatch() {
      deleteBatch(this.ids).then(response => {
        if (response.code === 200) {
          this.$message.success('批量删除成功！')
          this.loading()
        } else {
          this.$message.error('批量删除失败！')
        }
      })
    },
    handleEdit(row) {
      this.dialogForm.isShow = true
      this.dialogForm.type = 'edit'
      this.dialogForm.formData = row
      this.getDept()
    }
  },
  created() {
    this.loading()
  }
}
</script>
<style lang="less" scoped>
.common-table {
  height: calc(100% - 62px);
  background-color: white;
  position: relative;

  .pager {
    position: absolute;
    bottom: 20px;
    right: 20px;
  }
}

</style>
