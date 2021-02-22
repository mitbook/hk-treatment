Feature:病历夹-->查询就诊列表

  Background:
    * url zlUrl

  @ignore
  Scenario:病历夹-->查询就诊列表
    * def medicalrecord_num = ''
    * def patient_name = ''
    * def p_motherName = ''
    * def patient_mobile = ''
    * def disease_name = ''
    * def diagnosis_state = ''
    * def status = ''
    * def searchCode = 'All'
    * def source = 'All'
    * def pageno = 1
    * def pagesize = 50
    * def appointTimeStart = ''
    * def appointTimeEnd = ''
    * def sampleActionStr = '5f6df443e4054fbdb03a0c10e0ee6f80,a9deb33c37814eb393c697e2ef3209f7,6721230835c74d4d897648124974d25b,ac7dc8eca73f485ab411637381cd16bb,7902b4713ffa4bddba31c3e41a08b2d2'

    * call read("classpath:api/folder/patient/patientCaseSearch.feature")
    * match $.result == "success"