Feature:首页--->新增共享

  Background:
    * url zlUrl


  @ignore
  Scenario:首页--->新增共享
    Given path '/referral/addReferral'
    * header authToken = authToken
    * form fields read('classpath:api/task/referral/addReferral.json')
    When method post
    Then status 200
    * match $.result == "success"