Feature:获取token

  Background:
    * url zlUrl

  @ignore
  Scenario:获取token
    Given path '/login/login'
    * form fields read('classpath:api/toLogin/login.json')
    When method post
    Then status 200
    * match $.result == "success"
    * def authToken = response.data
    * print token:authToken