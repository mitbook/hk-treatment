Feature:直报中心--->病例编辑

  Background:
    * url zlUrl

  @ignore
  Scenario:直报中心--->病例编辑
    Given path '/DataMonitoring/getDataMonitorCaseList'
    * header authToken = authToken
    * request read("classpath:api/report/DataMonitoring/saveData.json")
    When method post
    Then status 200
    * match $.result == "success"