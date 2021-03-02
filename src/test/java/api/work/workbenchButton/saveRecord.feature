Feature:工作台--->新增病程

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->新增病程
    Given path '/workbenchButton/saveRecord'
    * header authToken = authToken
    * request read("classpath:api/work/workbenchButton/saveRecord.json")
    When method post
    Then status 200


  @ignore
  @hk
  Scenario:工作台--->新增病程
    Given path '/workbenchButton/saveRecord'
    * header authToken = authToken
    * request read("classpath:api/work/workbenchButton/saveRecords.json")
    When method post
    Then status 200