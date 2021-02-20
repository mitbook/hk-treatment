Feature:工作台--->发送消息

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->发送消息
    Given path '/message/newNotice'
    * header authToken = authToken
    * request read("classpath:api/work/message/newNotice.json")
    When method post
    Then status 200