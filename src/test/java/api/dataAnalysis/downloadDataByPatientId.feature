Feature:数据分析-->单条数据导出

  Background:
    * url zlUrl

  @ignore
  Scenario:数据分析-->单条数据导出
    Given path '/dataAnalysis/downloadDataByPatientId'
    * header authToken = authToken
    * form fields read('classpath:api/dataAnalysis/downloadDataByPatientId.json')
    When method get
    Then status 200