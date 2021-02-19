Feature:病例编辑

  Background:
    * url zlUrl


  Scenario:病例编辑
    * call read("classpath:report/DataMonitoring/getDataMonitorCaseList.feature")
    * call read("classpath:interfaces/report/DataMonitoring/saveData.feature")
    * match $.result == "success"