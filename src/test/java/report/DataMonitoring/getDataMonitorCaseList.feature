Feature:直报中心--->病例登记列表查询

  Background:
    * url zlUrl


  Scenario:直报中心--->病例登记列表查询
    * def report_source = ''
    * def report_state = ''
    * def pageno = 1
    * def pagesize = 50
    * def diagnosis_state = '4'
    * def diseaseIds = []
    * def date = []
    * def page = 1
    * def type = 'TSH'
    * call read("classpath:interfaces/report/DataMonitoring/getDataMonitorCaseList.feature")
    * match $.result == "success"
    * def caseList = response.data.list[0]