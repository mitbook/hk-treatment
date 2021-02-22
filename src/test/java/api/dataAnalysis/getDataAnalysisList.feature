Feature:数据分析-->查询数据分析列表

  Background:
    * url zlUrl

  @ignore
  Scenario:数据分析-->查询数据分析列表
    Given path '/dataAnalysis/getDataAnalysisList'
    * header authToken = authToken
    * request read('classpath:api/dataAnalysis/getDataAnalysisList.json')
    When method post
    Then status 200