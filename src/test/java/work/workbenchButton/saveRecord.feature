Feature:新增病程

  Background:
    * url zlUrl
    * def randomName = Java.type('util.rand.RName')

  @ignore
  Scenario:新增病程
    * def name = randomName.getRandomName()
    * def patient_name = name
    * def patient_sex = "男"
    * def patient_birthday = "2021-02-19"
    * def mother_name = name
    * def patient_mobile = "13656694002"
    * def cure_date = "2021-02-19"
    * def household_name = "北京/北京市/昌平区"
    * def household_code = "110000,110100,110114"
    * def house_type = "1"
    * def link_man = name
    * def heart_rate = ""
    * def patient_age = "0天"
    * def import_remark = "auto_多喝热水"
    * def house_type_name = "农业户口"
    * def record_type = "1"
    * def advice = 'auto_多喝热水'
    * call read("classpath:interfaces/work/workbenchButton/saveRecord.feature")
    * match $.result == "success"