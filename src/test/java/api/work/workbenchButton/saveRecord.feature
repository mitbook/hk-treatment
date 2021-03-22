Feature:工作台--->新增病程

  Background:
    * url zlUrl


  @ignore
  @mit
  Scenario:工作台--->新增病程
    Given path '/workbenchButton/saveRecord'
    * header authToken = authToken
    * request read("classpath:api/work/workbenchButton/saveRecord.json")
    When method post
    Then status 200
    * match $.result == "success"

  @ignore
  @hk
  Scenario:工作台--->新增病程
    Given path '/workbenchButton/saveRecord'
    * header authToken = authToken
    * request read("classpath:api/work/workbenchButton/saveRecords.json")
    When method post
    Then status 200
    * match $.result == "success"