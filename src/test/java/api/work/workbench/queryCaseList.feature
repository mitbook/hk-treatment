Feature:工作台--->查询病例列表

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->查询病例列表
    Given path '/workbench/queryCaseList'
    * header authToken = authToken
    * request read("classpath:api/work/workbench/queryCaseList.json")
    When method post
    Then status 200