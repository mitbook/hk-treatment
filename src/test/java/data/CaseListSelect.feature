Feature:工作台-->条件数据查询

  Background:
    * url zlUrl

  @ignore
  Scenario:工作台-->条件数据查询
    Given path '/workbench/queryCaseList'
    * header authToken = authToken
    * request read('classpath:api/dataAnalysis/downloadDataByPatientId.json')
    When method post
    Then status 200
    * match $.result == "success"
    * def case_id = response.data.list[0].case_id