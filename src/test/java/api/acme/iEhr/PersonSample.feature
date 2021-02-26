Feature: 采样管理 - 样本登记

  Background:
    * url acmeUrl
    * configure cookies = { SESSION: "#(SESSION)"}

  @ignore
  Scenario: 接口定义- 样本登记接口
    Given path 'iEhr/PersonSample'
    * form field param = read('classpath:api/acme/iEhr/PersonSample.json')
    When method post
    Then status 200