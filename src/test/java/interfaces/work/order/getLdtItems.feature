Feature:工作台--->获取ldt

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->获取ldt
    Given path '/order/getLdtItems'
    * header authToken = authToken
    * request {}
    When method get
    Then status 200
    * match $.result == "success"