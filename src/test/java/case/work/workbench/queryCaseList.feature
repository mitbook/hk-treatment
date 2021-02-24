Feature:工作台-->查询病例列表

  Background:
    * url zlUrl


  Scenario:工作台-->查询病例列表

    #新建病程(调用新建病程中的母亲姓名)
    * call read("classpath:case/work/workbenchButton/saveRecord.feature")
    * match $.result == "success"

    #获取新建病程返回的case_id
    * def caseId = response.data.case_id

    #数据准备
    * def case_state = 1
    * def pageno = 1
    * def pagesize = 50
    * def sampleAction = ["5f6df443e4054fbdb03a0c10e0ee6f80","a9deb33c37814eb393c697e2ef3209f7","6721230835c74d4d897648124974d25b", "ac7dc8eca73f485ab411637381cd16bb", "7902b4713ffa4bddba31c3e41a08b2d2"]
    * def diagnosis_state = ''
    * def diagnosis_date_range = []
    * def data_source = []
    * def patient_birthday_range = []
    * def appointTimeRange = []

    #通过母亲姓名查询数据是否新增到病例列表中
    * call read("classpath:api/work/workbench/queryCaseList.feature")

    #获取病例列表查询返回的case_id
    * def case_ids = response.data.list[0].case_id
    * match $.result == "success"

    #关键字段校验

    #获取疾病名称
    * def disease_name = response.data.list[0].disease_name

    #获取疾病名称状态
    * def diagnosis_state = response.data.list[0].diagnosis_state

    #获取母亲姓名
    * def motherName = response.data.list[0].mother_name

    #获取就诊人姓名
    * def patientName = response.data.list[0].patient_name

    #获取联合查询返回的total
    * def total = response.data.total

    #校验疾病名称
    * match disease_name == disease_name

    #校验疾病状态
    * match diagnosis_state == diagnosis_state

     #校验case_id是否相等
    * match caseId == caseId

    #校验母亲姓名
    * match motherName == motherName

    #校验就诊人姓名
    * match patientName == patientName

  @ignore
  @hk
  Scenario:工作台-->查询所有的病例列表并进行删除
    * def case_state = 1
    * def pageno = 1
    * def pagesize = 50
    * def sampleAction = ["5f6df443e4054fbdb03a0c10e0ee6f80", "a9deb33c37814eb393c697e2ef3209f7", "6721230835c74d4d897648124974d25b", "ac7dc8eca73f485ab411637381cd16bb", "7902b4713ffa4bddba31c3e41a08b2d2"]
    * def diagnosis_state = ''
    * def diagnosis_date_range = []
    * def data_source = []
    * def patient_birthday_range = []
    * def appointTimeRange = []
    * call read("classpath:api/work/workbench/queryCaseList.feature@hk")