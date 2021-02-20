Feature:病历夹-->查询预约列表--->更改预约

  Background:
    * url zlUrl


  Scenario:病历夹-->查询预约列表--->更改预约
    * call read("classpath:case/folder/patient/patientAppointSearch.feature")
    * def appoint_id = response.data.list[4].appoint_id
    * def patient_mobile = '13656694002'
    * def type = 0
    * def appoint_type = 1
    * def appoint_time = '2021-02-20'
    * call read("classpath:api/folder/patient/Appoint.feature")
    * match $.result == "success"