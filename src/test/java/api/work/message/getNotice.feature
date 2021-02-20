Feature:工作台--->复检安排

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->复检安排
    Given path '/message/getNotice'
    * header authToken = authToken
    * form fields read("classpath:api/work/message/getNotice.json")
    When method post
    Then status 200