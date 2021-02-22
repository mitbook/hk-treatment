Feature:任务管理--->共享任务--->新增共享

  Background:
    * url zlUrl
    * def randomName = Java.type('util.rand.RName')

  @ignore
  Scenario:任务管理--->共享任务--->新增共享
    * def name = randomName.getRandomName()
    * def mother_name = name
    * def patient_name = name
    * def patient_sex = '男'
    * def patient_birthday = '2021-02-19'
    * def mobile = '13656694002'

    * call read("classpath:api/task/referral/getRepeatCase.feature")
    * match $.result == "success"