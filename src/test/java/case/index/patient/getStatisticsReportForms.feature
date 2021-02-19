Feature:首页--->统计年度病例

  Background:
    * url zlUrl


  Scenario:首页--->统计年度病例
    * def type = 0
    * def startYear = 2020
    * def endYear = 2020
    * def state = '4'
    * call read("classpath:api/index/patient/getStatisticsReportForms.feature")
    * match $.result == "success"