Feature:消息中心--->医患沟通--->查询医患信息列表

  Background:
    * url zlUrl

  Scenario:消息中心--->医患沟通--->查询医患信息列表
    * def recallNum = ''
    * def patientName = ''
    * def motherName = ''
    * def patientMobile = ''
    * def diseaseName = ''
    * def newMsgState = ''
    * def page = 1
    * def pagesize = 50

    * call read("classpath:api/message/communicate/getCommunicateRecords.feature")
    * match $.result == "success"