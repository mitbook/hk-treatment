Feature:获取token

  Background:
    * url zlUrl

  @ignore
  Scenario:获取token
    Given path 'login/login'
    * form fields read('classpath:interfaces/toLogin/login.json')
    When method post
    Then status 200
    * def authToken = response.data
    * print authToken