Feature:查询管理--->样本查询

  Background:
    * url acmeUrl
    * configure cookies = { SESSION: "#(SESSION)"}

  Scenario: 查询管理--->样本查询
    Given path '/ehrNewborn/online/sample'
    * call read("classpath:api/acme/review/Reviewer.feature")
    * form fields read("classpath:api/acme/ehrNewborn/online/sample.json")
    When method get
    Then status 200