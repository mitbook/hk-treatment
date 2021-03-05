Feature:工作台-->查询病例相关id

  Background:
    * url zlUrl

  @ignore
  Scenario:工作台-->查询病例相关id
    Given path '/workbench/queryRecordsList'
    * header authToken = authToken
    * form fields read('classpath:api/work/workbench/queryRecordsList.json')
    When method post
    Then status 200