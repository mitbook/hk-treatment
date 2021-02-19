Feature:直报中心--->病例登记列表查询

  Background:
    * url zlUrl

  @ignore
  Scenario:病例登记列表查询
    Given path '/DataMonitoring/getDataMonitorCaseList'
    * header authToken = authToken
    * request read("classpath:interfaces/report/DataMonitoring/getDataMonitorCaseList.json")
    When method post
    Then status 200