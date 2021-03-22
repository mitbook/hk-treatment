Feature:工作台--->发送消息

  Background:
    * url zlUrl


  Scenario:工作台--->发送消息
    Given path '/message/batchSendMessage'
    #单条消息
    * call read("classpath:case/work/workbench/queryCaseList.feature@selectAllCaseList")
    * match $.result == "success"
    #数组中下标为0的数据
    * def patient_id = response.data.list[0].patient_id

     #数组中下标为1的数据
    * def patient_id = response.data.list[1].patient_id
    * def type = 0
    * def template = '阴性模版'
    * def content = '各实验项目结果均为阴性'

    * call read("classpath:api/work/message/batchSendMessage.feature")

    #多条消息(通过数组下标参数进行拼接的方式进行参数的传递)
    * call read("classpath:api/work/message/batchSendMessage.feature")
    * match $.result == "success"