Feature:工作台--->导出病例列表

  Background:
    * url zlUrl
    * def byteExcel = Java.type('util.excel.ExcelUtil')

  @ignore
  Scenario:工作台--->导出病例列表
    Given path '/workbench/caseListExportExcel'
    * header authToken = authToken
    * request read("classpath:api/work/workbench/caseListExportExcel.json")
    When method post
    Then status 200
#    * print response
    * byteExcel.byteArrayToExcel(responseBytes)