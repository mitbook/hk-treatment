Feature:主界面--->跳转amce--->获取cookie

  Background:
    * url acmeUrl

  @ignore
  Scenario:主界面--->跳转amce--->获取cookie
    Given path '/unifiedLogin/doLogin'
    * header authToken = authToken
    * form fields read('classpath:api/acme/login/doLogin.json')
    When method post
    Then status 200