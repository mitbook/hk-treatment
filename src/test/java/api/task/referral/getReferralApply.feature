Feature:任务管理--->获取共享任务列表

  Background:
    * url zlUrl

  @ignore
  Scenario:任务管理--->获取共享任务列表
    Given path '/referral/getReferralApply'
    * header authToken = authToken
    * request read("classpath:api/task/referral/getReferralApply.json")
    When method post
    Then status 200
    * match $.result == "success"