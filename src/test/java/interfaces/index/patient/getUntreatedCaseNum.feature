Feature:首页--->获取待处理病例数

  Background:
    * url zlUrl


  Scenario:获取待处理病例数
    Given path '/patient/getUntreatedCaseNum'
    * header authToken = authToken
    * request {}
    When method post
    Then status 200
    * match $.result == "success"