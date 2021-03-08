Feature:工作台-->查询病例列表

  Background:
    * url zlUrl
    * def case_code = Java.type('util.data.BarCode')
    * def times = Java.type('util.rsa.GetTime')

  @ignore
  @mit
  Scenario:工作台-->查询病例列表

    #新建病程(调用新建病程中的母亲姓名)
    * call read("classpath:case/work/workbenchButton/saveRecord.feature@mit")
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
    * def patient_id = response.data.list[0].patient_id


    * def case_id = caseId
    * call read("classpath:api/work/workbench/queryRecordsList.feature")
    * def record_id = response.data[0].record_id
    * def case_id = response.data[0].case_id
    * print record_id
    * print case_id
    * def id = response.data[0].diseaseDiags[0].id
    * print id

    * def caseCode = case_code.caseCode()
    * def timeMillis = times.getTimeMillis()

    * def blood_card_num =  null
    * def screen_date =  null
    * def recall_num = caseCode
    * def draw_blood_hos =  '浙江省人民医院'
    * def mother_age =  30
    * def reserved4 =  null
    * def hyperthyroidism =  'auto_不知道'
    * def link_telephone =  '13656694002'
    * def address_name =  '北京/北京市/昌平区'
    * def address_code =  '110000110100110114'
    * def present_address =  'auto_北京'
    * def blood_card_state =  null
    * def screen_project =  null
    * def case_remark =  'auto_多喝热水'
    * def case_id =  caseId
    * def birth_weight_unit =  'g'
    * def disease_id =  '2147'
    * def xinshai_county =  null
    * def xinshai_countyId =  '110114'
    * def house_type_name =  '非农业户口'
    * def barcode_num =  null
    * def data_source =  '0'
    * def admission_num = caseCode
    * def mother_id_no =  '110101199003070097'
    * def mother_id_type_code =  '1'
    * def disease_name =  '未知'
    * def case_state =  1
    * def household_address =  null
    * def check_department =  '13572'
    * def personid =  null
    * def centerid =  null
    * def nationality_code =  '汉族'
    * def disease_id =  '2147'
    * def diagnosis_state =  '2'
    * def case_id =  caseId
    * def create_time = timeMillis
    * def state =  1
    * def type =  2
    * def diagnosis_date =  null
    * def main_diagnosis =  1
    * def experiment_code =  ''
    * def appoint_remark =  null
    * def import_remark =  null
    * def temperature =  null
    * def pulse =  null
    * def breathing =  null
    * def blood_pressure_low =  10
    * def blood_pressure_high =  10
    * def bloodPressureStr =  null
    * def weight =  null
    * def weight_unit =  null
    * def height =  20
    * def head_circumference =  null
    * def bust =  null
    * def abdominal_perimeter =  null
    * def abdominal_perimeter_top =  null
    * def abdominal_perimeter_bottom =  null
    * def growth =  null
    * def nutrition =  null
    * def reaction =  null
    * def complexion =  null
    * def body_surface_temperature =  null
    * def cry =  null
    * def skin_colour =  null
    * def elastic =  null
    * def rash =  null
    * def subcutaneous_fat =  null
    * def skull_shape =  1
    * def hair =  null
    * def bregma =  null
    * def bregma_appearance =  null
    * def after_brine =  0
    * def sutura_cranii =  null
    * def skull_softening =  null
    * def tongue =  null
    * def special_face =  null
    * def angular_distance_in =  null
    * def angular_distance_out =  null
    * def neck =  null
    * def neck_remark =  null
    * def thyroid =  null
    * def chest =  null
    * def breath_sounds =  null
    * def heart_rate =  null
    * def heart_rhythm =  null
    * def heart_sound =  null
    * def abdomen =  null
    * def liver_and_spleen =  null
    * def bowel_sounds =  null
    * def spine_limbs =  null
    * def limbs_movement =  null
    * def aedea =  null
    * def aedea_remark =  null
    * def diagnosis_date =  null
    * def child_id_type_code =  '1'
    * def child_identitycard =  '110101199003073052'
    * def father_name =  'auto_小哥哥'
    * def father_id_type_code =  '1'
    * def father_household =  '110000110100110114'
    * def mother_household =  '110000110100110114'
    * def medicalrecord_num = caseCode
    * def father_id_no =  '110101199003073052'
    * def heart_rate =  null
    * def father_age =  null
    * def mother_edu_degree =  null
    * def father_edu_degree =  null
    * def mother_occupation =  null
    * def father_occupation =  null
    * def mother_height =  null
    * def father_height =  null
    * def pregnancy_complications =  null
    * def experimentNum =  null
    * def diseaseName =  '未知'
    * def diagnosticName =  '疑似'
    * def mother_household_name =  '北京/北京市/昌平区'
    * def father_household_name =  '北京/北京市/昌平区'
    * def patient_age1 =  '17天'

    * call read("classpath:api/work/workbench/updateCaseDetails.feature")
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

     #校验case_id是否相等
    * match caseId == case_ids

    #校验母亲姓名
    * match motherName == mother_name

    #校验就诊人姓名
    * match patientName == patient_name

    #出生日期
    * match birthdays == patient_birthday

    #性别
    * match sex == patient_sex


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