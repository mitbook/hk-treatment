Feature:病历夹-->病例列表-->发送消息

  Background:
    * url zlUrl

  @ignore
  Scenario:病历夹-->病例列表-->发送消息
    Given path '/message/newNotice'
    * header authToken = authToken
    * request read('classpath:api/folder/message/newNotice.json')
    When method post
    Then status 200