Feature:工作台-->新增病人

  Background:
    * url zlUrl
    * def randomName = Java.type('util.rand.RName')

  @ignore
  Scenario:工作台-->新增病人
    * def name = randomName.getRandomName()
    * def patient_name = name
    * def patient_sex = "男"
    * def patient_birthday = "2021-02-19"
    * def mother_name = name
    * def patient_mobile = "13656694002"

    * call read("classpath:api/work/ConsultationMission/getLikelyCase.feature")
    * match $.result == "success"