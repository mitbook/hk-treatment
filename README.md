```shell script
诊疗自动化脚本
###注意
   1.用mvn命令执行用例的时候需要把jvm的栈大小设置成大一点
   2.需用命令调试内存,否在栈内存溢出
###栈溢出产生原因
   1.频繁递归调用

###注意事项:
1.导入病例:persionId是唯一的
2.绑定病例:pseridid改为acme的 persionId或者老新刷的persionId
3.在新增病人到新增病程当中的疾病名称和诊断状态与接口请求中的diagnosis_state与诊断状态相互对应
  disease_id与疾病名称想对应

###数据校验
   1.新增病人到新增病程之后数据校验测试用例目录:case/work/workbench/queryCaseList.feature
###存在问题
   1.导入病例中的测试用例:api/work/newScreen/extracCases.feature,因接口请求参数等问题,不采用间接的参数传递
   2.导入病例的时候怎么区分是acme还是新筛数据:通过换账号进行区分
###诊疗日志查看命令
   1.tail -500f /opt/treat/TreatSystem_Api-.out

###业务注意事项
1.推送过来的数据需要新增病程之后才可以绑定病例
2.在acme中数据走到结论审核然后到诊疗当中进行新增病人(新增病程的同时已经新增了病程),然后才能绑定病人
3.提取样本LDT暂时不写自动化用,因第三方接口没有进行维护

###amce基本业务流程
1.样本登记---->样本递送--->实验验收--->实验加样--->数据审核(上传,审核)--->结论审核
  (在诊疗新增病人的时候母亲姓名,就诊人姓名,出生日期,电话号码需要一致,才能进行样本的绑定和样本的提取)

###校验问题
1.绑定状态校验(需核实是否有绑定状态的接口,或者通过sql进行查询)

###业务测试前注意事项
1.在执行该自动化用例之前首先要启动acme业务测试用例服务,保障结论申请的数据到达诊疗系统
###测试用例
1.https://ones.ai/project/#/testcase/team/GHq6q2mF/plan/LZeBn5zj/library



#用例补充:
1.case/work/patient/bindingScreenPatient.feature(增加acme复检流程,复检之后样本自动推送,acme测开发添加)
2.在工作台中选择病程之后按钮栏下面的序号删除按钮,未复诊状态点击删除按钮是取消预约或者修改预约,其他的是删除病程
```