Feature:主界面--->跳转amce--->获取systemId

  Background:
    * url zlUrl

  @ignore
  Scenario:主界面--->跳转amce--->获取systemId
    Given path 'login/checkLoginByTokenAndAppId'
    * header authToken = authToken
    * form fields read('classpath:api/acme/login/checkLoginByTokenAndAppId.json')
    When method post
    Then status 200