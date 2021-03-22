Feature:工作台--->复检安排

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->复检安排
    #新建病程/编辑病程
    * call read("classpath:case/work/workbenchButton/saveRecord.feature@hk")
    * match $.result == "success"

    #复检安排
    * call read("classpath:api/work/message/getNotice.feature")
    * match $.result == "success"