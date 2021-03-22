Feature:工作台--->样本库--->提取样本--->查询样本列表

  Background:
    * url zlUrl
    * def time = Java.type('util.rsa.GetTime')

  @ignore
  Scenario:工作台--->样本库--->提取样本--->查询样本列表
    #通过获取acme流转过来的数据进行病程数据的新增
    * call read("classpath:case/work/workbenchButton/saveRecord.feature@addCaseAcme")
    * match $.result == "success"

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
    * match $.result == "success"

    #获取下游接口数据
    * def patientId = response.data.list[0].patient_id

    * def source = 0
    * def samplebarcode = ''
    * def patient_name = ''
    * def sex = ''
    * def collection_start_date = time.getSearchTime()
    * def collection_end_date = time.getCurrentTime()

    #查询提取样本库中的数据
    * call read("classpath:api/work/patient/getSampleBySource.feature")
    * def sampleid = response.data[0].sampleid
    * match $.result == "success"