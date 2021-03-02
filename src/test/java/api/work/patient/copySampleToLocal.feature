Feature:工作台--->样本库--->提取样本--->复制样本

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->样本库--->提取样本--->复制样本
    Given path '/patient/copySampleToLocal'
    * header authToken = authToken
    * request read("classpath:api/work/patient/copySampleToLocal.json")
    When method post
    Then status 200