Feature:工作台-->查询病例列表

  Background:
    * url zlUrl

  Scenario:工作台-->查询病例列表
    * call read("classpath:case/work/workbench/queryCaseList.feature@selectCaseList")
    * match $.result == "success"