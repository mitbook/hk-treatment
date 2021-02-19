Feature:首页--->新增共享

  Background:
    * url zlUrl


  @ignore
  Scenario:首页--->新增共享
    Given path '/referral/getRepeatCase'
    * header authToken = authToken
    * form fields read('classpath:api/task/referral/getRepeatCase.json')
    When method post
    Then status 200