chcp 65001
@echo "服务由任务计划启动"
@echo "正在清除临时文件"
@del /Q /S C:\Users\Administrator\Desktop\Temp\*
@echo "清除完毕！"
@pause