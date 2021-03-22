Feature:工作台--->样本库--->绑定病例--->查询病例列表

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->样本库--->绑定病例--->查询病例列表
    Given path '/patient/getScreenPatient'
    * header authToken = authToken
    * request read("classpath:api/work/patient/getScreenPatient.json")
    When method post
    Then status 200
    * match $.result == "success"