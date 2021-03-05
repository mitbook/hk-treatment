Feature:工作台--->更新病例详情

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->更新病例详情
    Given path '/workbench/updateCaseDetails'
    * header authToken = authToken
    * request read("classpath:api/work/workbench/updateCaseDetails.json")
    When method post
    Then status 200