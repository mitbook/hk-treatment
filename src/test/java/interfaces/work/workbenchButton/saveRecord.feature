Feature:新增病程

  Background:
    * url zlUrl


  @ignore
  Scenario:新增病程
    Given path '/workbenchButton/saveRecord'
    * header authToken = authToken
    * request read("classpath:interfaces/work/workbenchButton/saveRecord.json")
    When method post
    Then status 200