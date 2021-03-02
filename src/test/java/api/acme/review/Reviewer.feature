Feature:acme结论审核

  Background:
    * url acmeHttpUrl

  @ignore
  Scenario:acme结论审核
    Given path '/runFeature'
    * request read('classpath:api/acme/review/Reviewer.json')
    When method post
    Then status 200
    * def barcode = response.barcode