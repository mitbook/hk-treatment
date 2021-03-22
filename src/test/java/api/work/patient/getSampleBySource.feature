Feature:工作台--->样本库--->提取样本--->查询样本列表

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->样本库--->提取样本--->查询样本列表
    Given path '/patient/getSampleBySource'
    * header authToken = authToken
    * request read("classpath:api/work/patient/getSampleBySource.json")
    When method post
    Then status 200
    * match $.result == "success"