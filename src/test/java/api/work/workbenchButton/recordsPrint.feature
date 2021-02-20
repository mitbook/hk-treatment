Feature:工作台-->病程打印

  Background:
    * url zlUrl

  @ignore
  Scenario:工作台-->病程打印
    Given path '/workbenchButton/recordsPrint'
    * header authToken = authToken
    * form fields read('classpath:api/work/workbenchButton/recordsPrint.json')
    When method post
    Then status 200