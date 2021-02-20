Feature:病历夹-->病例列表-->发送消息

  Background:
    * url zlUrl


  Scenario:病历夹-->病例列表-->发送消息
    * call read("classpath:case/folder/patient/patientCaseSearch.feature")
    * def case_id = response.data.list[3].case_id
    * def mobile = '13656694002'
    * def type = 0
    * def template = '阴性模版'
    * def speaker = '妈妈'
    * def content = '各实验项目结果均为阴性'
    * def record_id = ''
    * call read("classpath:api/folder/message/newNotice.feature")
    * match $.result == "success"