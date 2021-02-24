Feature:获取tokenId

  Background:
    * url zlUrl
    * def md5 = Java.type('util.rsa.RSAUtils')

  @ignore
  Scenario:获取tokenId
    Given path '/login/getToken'
    * def publicKey = $.data
    * def password = md5.encrypt("biosan#17",publicKey)
    * form fields read('classpath:api/toLogin/getToken.json')
    When method post
    Then status 200
    * def tokenIds = response.data.tokenId
    * print tokenIds