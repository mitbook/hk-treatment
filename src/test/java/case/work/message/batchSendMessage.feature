Feature:工作台--->发送消息

  Background:
    * url zlUrl



  Scenario:工作台--->发送消息
    Given path '/message/batchSendMessage'
    #单条消息
    * call read("classpath:case/work/workbench/queryCaseList.feature@hk")
    * def patient_id = ["8d26c3c3-cfba-43bc-8674-1624803e5f91"]
    * print patient_id
    * def type = 0
    * def template = '阴性模版'
    * def content = '各实验项目结果均为阴性'
    * call read("classpath:api/work/message/batchSendMessage.feature")
    * match $.result == "success"
#    #多条消息
#    * call read("classpath:api/work/message/batchSendMessage.feature")
#    * match $.result == "success"