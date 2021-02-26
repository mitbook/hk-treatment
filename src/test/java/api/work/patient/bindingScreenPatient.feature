Feature:工作台--->样本库--->查询病例列表--->绑定病例

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->样本库--->查询病例列表--->绑定病例
    Given path '/patient/bindingScreenPatient'
    * header authToken = authToken
    * form fields read('classpath:api/work/patient/bindingScreenPatient.json')
    When method post
    Then status 200