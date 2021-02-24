Feature:工作台--->查询病例列表

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->查询条件病例列表
    Given path '/workbench/queryCaseList'
    * header authToken = authToken
    * request read("classpath:api/work/workbench/queryCaseList.json")
    When method post
    Then status 200


  @ignore
  @hk
  Scenario:工作台--->查询所有病例列表
    Given path '/workbench/queryCaseList'
    * header authToken = authToken
    * request read("classpath:api/work/workbench/queryCaseLists.json")
    When method post
    Then status 200


  @ignore
  @hk_edu
  Scenario:工作台--->查询所有病例列表
    Given path '/workbench/queryCaseList'
    * header authToken = authToken
    * request read("classpath:api/work/workbench/queryName.json")
    When method post
    Then status 200

