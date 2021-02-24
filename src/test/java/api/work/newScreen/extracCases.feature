Feature:工作台--->导入病例

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->导入病例
    Given path '/newScreen/extracCases'
    * header authToken = authToken
    * call read("classpath:case/work/patient/getScreenPatient.feature")
    * def personId = response.data[0].personid
    * print personId
    * request ["+"'"+personId+"']
    When method post
    Then status 200
    * match $.result == "success"
    #通过persionId查询母亲姓名
    * call read("classpath:api/work/newScreen/selectPersionIdToMomName.feature")
     #导出病例之后通过列表页面查询存在一定的延时,故此不在此用例中校验
#    * def case_state = 1
#    * def pageno = 1
#    * def pagesize = 50
#    * def sampleAction = ["5f6df443e4054fbdb03a0c10e0ee6f80", "a9deb33c37814eb393c697e2ef3209f7", "6721230835c74d4d897648124974d25b", "ac7dc8eca73f485ab411637381cd16bb", "7902b4713ffa4bddba31c3e41a08b2d2"]
#    * def diagnosis_date_range = []
#    * def appointTimeRange = []
#    * def patient_birthday_range = []
#    * def diagnosis_state = ''
#    #根据母亲姓名查询病例是否存在
#    * call read("classpath:api/work/workbench/queryCaseList.feature@hk_edu")
