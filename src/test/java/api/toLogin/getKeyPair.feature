@ignore
Feature: 获取公钥

  Background:
    * url zlUrl

  @ignore
  Scenario:获取公钥
    Given path 'login/getKeyPair'
    * form fields read('classpath:api/toLogin/getKeyPair.json')
    When method post
    Then status 200
