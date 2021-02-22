Feature:数据分析-->导出记录

  Background:
    * url zlUrl

  @ignore
  Scenario:数据分析-->导出
    Given path '/dataAnalysis/getDataDownloadHis'
    * header authToken = authToken
    * request {}
    When method get
    Then status 200