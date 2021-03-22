Feature:首页--->统计年度病例

  Background:
    * url zlUrl

  @ignore
  Scenario:首页--->统计年度病例
    Given path '/patient/getStatisticsReportForms'
    * header authToken = authToken
    * request read("classpath:api/index/patient/getStatisticsReportForms.json")
    When method post
    Then status 200
    * match $.result == "success"