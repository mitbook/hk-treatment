Feature:直报中心--->病例编辑

  Background:
    * url zlUrl


  Scenario:直报中心--->病例编辑
    * call read("classpath:case/report/DataMonitoring/getDataMonitorCaseList.feature")
    * match $.result == "success"
    * call read("classpath:api/report/DataMonitoring/saveData.feature")
    * match $.result == "success"