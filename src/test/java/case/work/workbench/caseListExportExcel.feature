Feature:工作台--->导出病例列表

  Background:
    * url zlUrl

  Scenario:工作台--->导出病例列表
    * def case_state = 1
    * def sampleAction = ['5f6df443e4054fbdb03a0c10e0ee6f80','a9deb33c37814eb393c697e2ef3209f7','6721230835c74d4d897648124974d25b','ac7dc8eca73f485ab411637381cd16bb','7902b4713ffa4bddba31c3e41a08b2d2']
    * call read("classpath:api/work/workbench/caseListExportExcel.feature")
    #因导出excel是特殊字符,故此不需要success校验,只需要校验状态码即可