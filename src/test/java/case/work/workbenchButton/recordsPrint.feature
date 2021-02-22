Feature:工作台-->病程打印

  Background:
    * url zlUrl


  Scenario:工作台-->病程打印
    * call read("classpath:case/task/ConsultationMission/addPatient.feature")

    * def case_id = response.data

    * call read("classpath:api/work/workbenchButton/recordsPrint.feature")
    * match $.result == "success"