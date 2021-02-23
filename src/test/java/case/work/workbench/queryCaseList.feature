Feature:工作台-->查询病例列表

  Background:
    * url zlUrl


  Scenario:工作台-->查询病例列表
    #新建病程(调用新建病程中的母亲姓名)
    * call read("classpath:case/work/workbenchButton/saveRecord.feature")
    * def case_state = 1
    * def pageno = 1
    * def pagesize = 50
    * def sampleAction = ["5f6df443e4054fbdb03a0c10e0ee6f80", "a9deb33c37814eb393c697e2ef3209f7", "6721230835c74d4d897648124974d25b", "ac7dc8eca73f485ab411637381cd16bb", "7902b4713ffa4bddba31c3e41a08b2d2"]
    * def diagnosis_state = ''
    * def diagnosis_date_range = []
    * def data_source = []
    * def patient_birthday_range = []
    * def appointTimeRange = []
    #通过母亲姓名查询数据是否新增到病例列表中
    * call read("classpath:api/work/workbench/queryCaseList.feature")
    * def totals = response.data.total
    * match $.result == "success"
    #校验查询的数据是否为1条
    * match totals == 1
    