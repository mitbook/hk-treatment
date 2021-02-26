Feature:工作台--->样本库--->查询病例列表--->绑定病例

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->样本库--->查询病例列表--->绑定病例
    * def source =  0
    * def samplebarcode =  ''
    * def collection_start_date = '2021-01-27'
    * def collection_end_date = '2021-02-26'
    * def patientId =  '33003bdb-e39b-4133-9617-27bb3dade68b'

    * call read("classpath:api/work/patient/getScreenPatient.feature")
    * match $.result == "success"
    * def personId = response.data[0].personid
    * print personId


    #绑定病例
    * def patientId = '33003bdb-e39b-4133-9617-27bb3dade68b'
    * call read("classpath:api/work/patient/bindingScreenPatient.feature")
    * match $.result == "success"