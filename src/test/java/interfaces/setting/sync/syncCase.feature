Feature:设置--->数据同步

  Background:
    * url zlUrl

  Scenario:数据同步
    Given path '/sync/syncCase'
    * header authToken = authToken
    * request {}
    When method post
    Then status 200
    * match $.result == "success"