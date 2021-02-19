Feature:任务管理--->撤销任务共享

  Background:
    * url zlUrl

  @ignore
  Scenario:任务管理--->撤销任务共享
    Given path '/referral/cancelReferral'
    * header authToken = authToken
    * form fields read('classpath:interfaces/task/referral/cancelReferral.json')
    When method post
    Then status 200