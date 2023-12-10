import request from '../utils/request'

const url = '/work'

/**
 * 添加排版
 * @param data
 * @returns {AxiosPromise}
 */
export const addWork = (data) => {
  return request({
    url: url + '/addWork',
    method: 'post',
    data
  })
}

/**
 * 请求当前用户的排班
 */
export const getWork = (data) => {
  return request({
    url: url + '/getWork',
    method: 'post',
    data
  })
}

/**
 * 删除排班
 */
export const deleteWork = (id) => {
  return request({
    url: url + '/deleteWork/' + id, method: 'delete'
  })
}
