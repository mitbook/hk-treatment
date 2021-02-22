Feature:工作台--->复检安排

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->复检安排
    * call read("classpath:case/work/workbenchButton/saveRecord.feature")

    * call read("classpath:api/work/message/getNotice.feature")
    * match $.result == "success"