Feature:统计年度病例

  Background:
    * url zlUrl

  @ignore
  Scenario:统计年度病例
    Given path '/patient/getStatisticsReportForms'
    * header authToken = authToken
    * request read("classpath:interfaces/index/patient/getStatisticsReportForms.json")
    When method post
    Then status 200