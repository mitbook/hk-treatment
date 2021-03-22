Feature:工作台--->发送消息

  Background:
    * url zlUrl

  Scenario:工作台--->发送消息
    * call read("classpath:case/task/ConsultationMission/addPatient.feature")
    * match $.result == "success"

    * def case_id = response.data
    * def mobile = '13656694005'
    * def type = '0'
    * def template = '阴性模版'
    * def content = '各实验项目结果均为阴性'

    * call read("classpath:api/work/message/newNotice.feature")
    * match $.result == "success"