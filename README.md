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
   2.导出病例之后通过列表页面查询存在一定的延时,故此用例中校验,如需校验,加上线程等待时间
   3.删除病例中的共享病例不能删除还没有写
   4.导入病例的时候怎么区分是acme还是新筛数据:通过换账号进行区分
###后期再写用例
   1.[工作台]绑定病人(acme,老新筛业务流)
   2.[工作台]提取样本-新筛
   3.[工作台]提取样本-LDT
   4.[工作台]绑定样本
###诊疗日志查看命令
   1.tail -500f /opt/treat/TreatSystem_Api-.out
```