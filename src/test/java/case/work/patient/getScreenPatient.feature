Feature:工作台--->导入病例--->查询病例列表

  Background:
    * url zlUrl

  Scenario:工作台--->导入病例--->查询病例列表
    * def patient_type = '召回确诊,召回复查,定期复查,患儿复查'
    * def samplebarcode = ''
    * def recall_num_low = ''
    * def mother_name = ''
    * def report_start_date = '2020-12-31'
    * def report_end_date = '2021-02-20'
    * def isPaging = 0
    * def needCount = 0
    * def pageNum = 1
    * def pageSize = 50
    * call read("classpath:api/work/patient/getScreenPatient.feature")
    * match $.result == "success"