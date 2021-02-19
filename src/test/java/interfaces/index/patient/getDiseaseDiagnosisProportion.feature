Feature:首页--->获取病例诊断比例

  Background:
    * url zlUrl


  Scenario:获取病例诊断比例
    Given path '/patient/getDiseaseDiagnosisProportion'
    * header authToken = authToken
    * request {}
    When method post
    Then status 200
    * match $.result == "success"