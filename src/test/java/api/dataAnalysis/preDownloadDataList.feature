Feature:数据分析-->导出

  Background:
    * url zlUrl

  @ignore
  Scenario:数据分析-->导出
    Given path '/dataAnalysis/getDataAnalysisList'
    * header authToken = authToken
    * request read('classpath:api/dataAnalysis/preDownloadDataList.json')
    When method post
    Then status 200
    * match $.result == "success"