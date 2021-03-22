Feature:工作台-->新增病程

  Background:
    * url zlUrl
    * def randomName = Java.type('util.rand.RName')
    * def time = Java.type('util.rsa.GetTime')

  @ignore
  @addCase
  Scenario:工作台-->新增病程
    * call read("classpath:case/work/ConsultationMission/getLikelyCase.feature")
    * match $.result == "success"

    * def cure_date =  '2021-02-22'
    * def household_name =  '北京/北京市/昌平区'
    * def household_code =  '110000110100110114'
    * def house_type =  0
    * def link_man =  '彭医生'
    * def body_surface_area =  0.8
    * def general_situation =  'auto_多喝热水'
    * def pastillnesscontent =  'auto_暂无'
    * def complain =  'auto_暂无'
    * def condition_change =  0
    * def appetite =  'auto_不好'
    * def mental_status =  'auto_不好'
    * def family_inheritance =  2
    * def patient_age =  '0天'
    * def birth_weight =  10
    * def fetus_count =  1
    * def production_time =  1
    * def pregweek =  20
    * def pregday =  1
    * def jaundice_degree =  'auto_不知道'
    * def jaundice_start_time = ''
    * def skull_shape =  1
    * def delivery_mode =  1
    * def feeding_history =  1
    * def auditory_sieve_if_pass =  1
    * def vision_if_pass =  1
    * def asphyxia =  2
    * def presentillnesscontent =  'auto_不好'
    * def cure_weight =  20
    * def cure_heght =  20
    * def cure_headsize =  10
    * def bust =  10
    * def afterBrine =  0
    * def jaundice =  2
    * def stool_frequency =  1
    * def skin =  '黑色'
    * def cardiac_souffle =  2
    * def lung_feature =  'auto_好'
    * def liver_and_spleen =  'auto_好'
    * def belly_feature =  'auto_好'
    * def muscle_strength =  'auto_好'
    * def vulva_engender =  'auto_好'
    * def blood_pressure_high =  10
    * def blood_pressure_low =  10
    * def import_remark =  'auto_多喝热水'
    * def font =  '10×10'
    * def reserve_date =  null
    * def house_type_name =  '非农业户口'
    * def birth_weight_unit =  'g'
    * def unit_weight =  'kg'
    * def record_type =  1
    * call read("classpath:api/work/workbenchButton/saveRecord.feature@allAddCase")
    * match $.result == "success"
    * def case_id = response.data.case_id
    * def peronId = response.data.peronId

  @ignore
  @addCaseAcme
  Scenario:工作台-->新增病程(acme数据流转)
    #先执行数据同步
    * call read("classpath:api/setting/sync/syncCase.feature")
    * match $.result == "success"

    * def getTimes = time.getBirthTime()
    * call read("classpath:api/acme/ehrNewborn/online/sample.feature")
    * def mother_name = response.Rows[0].mothername
    * def patient_birthday = getTimes
    * def patient_name = mother_name
    * def patient_name = mother_name
    * def patient_sex = '男'
    * def patient_mobile = '18072710518'
    * def cure_date = getTimes
    * def medDate = getTimes

    * call read("classpath:api/work/workbenchButton/saveRecord.feature@partAddCase")
    * match $.result == "success"
    * def case_id = response.data.case_id

