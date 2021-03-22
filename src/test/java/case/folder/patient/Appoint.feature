Feature:病历夹-->查询预约列表--->更改预约

  Background:
    * url zlUrl


  Scenario:病历夹-->查询预约列表--->更改预约
    * def medicalrecord_num = ''
    * def patient_name = ''
    * def p_motherName = ''
    * def patient_mobile = ''
    * def disease_name = ''
    * def diagnosis_state = ''
    * def status =  0
    * def searchCode =  'All'
    * def source =  'All'
    * def pageno =  1
    * def pagesize =  50
    * def appointTimeStart = ''
    * def appointTimeEnd = ''
    * def sampleActionStr = '5f6df443e4054fbdb03a0c10e0ee6f80,a9deb33c37814eb393c697e2ef3209f7,6721230835c74d4d897648124974d25b,ac7dc8eca73f485ab411637381cd16bb,7902b4713ffa4bddba31c3e41a08b2d2'

    * call read("classpath:api/folder/patient/patientAppointSearch.feature@SubscribeList")
    * match $.result == "success"
    * def appoint_id = response.data.list[0].appoint_id
    * def mother_name = response.data.list[0].mother_name
    * print mother_name
    * def patient_mobile = '13656694005'
    * def type = 0
    * def appoint_type = 1
    * def appoint_time = '2021-02-20'
    * call read("classpath:api/folder/patient/Appoint.feature")
    * match $.result == "success"
    #病例中有重复数据故进行人工数据核对
