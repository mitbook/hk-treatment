Feature:首页--->获取累计病例数

  Background:
    * url zlUrl


  Scenario:首页--->获取累计病例数
    Given path '/patient/getNavigationList'
    * header authToken = authToken
    * request {}
    When method post
    Then status 200
    * match $.result == "success"