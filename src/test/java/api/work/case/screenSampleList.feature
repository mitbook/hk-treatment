Feature:工作台--->删除病例

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->删除病例
    Given path '/case/deleteCase'
    * header authToken = authToken
    * form fields read("classpath:api/work/case/deleteCase.json")
    When method post
    Then status 200