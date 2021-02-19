Feature:病例编辑

  Background:
    * url zlUrl

  @ignore
  Scenario:病例编辑
    Given path '/DataMonitoring/getDataMonitorCaseList'
    * header authToken = authToken
    * request read("classpath:interfaces/report/DataMonitoring/saveData.json")
    When method post
    Then status 200