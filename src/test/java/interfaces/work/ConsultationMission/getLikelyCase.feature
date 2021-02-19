Feature:工作台--->新增病人

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->新增病人
    Given path '/ConsultationMission/getLikelyCase'
    * header authToken = authToken
    * form fields read("classpath:interfaces/work/ConsultationMission/getLikelyCase.json")
    When method post
    Then status 200