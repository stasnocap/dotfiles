# TODO

## Reinstall wsl

[ ] understand stow
[ ] copy ssh key!!!
[ ] perform reinstall

## ???

[ ] gh cli for ssh management in work env


## lazybitrix

### Continue task

1.

https://bitrix.ivcmf.by/bitrix/components/bitrix/tasks.iframe.popup/ajax.php?SITE_ID=s1

form
sessid=679af5446bcec997fa8d817e8d8f79d3
&batch[0][operation]=CTaskTimerManager%3A%3AgetLastTimer()
&batchId=batch_sequence_No_1

response
{'status':'success','repliesCount':'1','data':[{'returnValue':{'TASK_ID':'77187','USER_ID':'585','TIMER_STARTED_AT':'0','TIMER_ACCUMULATOR':'0'},'requestedOperationName':'CTaskTimerManager::getLastTimer()'}],'batchId':'batch_sequence_No_1'}

2.

https://bitrix.ivcmf.by/bitrix/components/bitrix/tasks.iframe.popup/ajax.php?SITE_ID=s1

form
sessid=679af5446bcec997fa8d817e8d8f79d3
&batch[0][operation]=CTaskTimerManager%3A%3Astart()
&batch[0][taskData][ID]=77187&batch[1][operation]=CTaskItem%3A%3AgetTaskData()
&batch[1][taskData][ID]=%23RC%23%24arOperationsResults%23-1%23requestedTaskId
&batch[2][operation]=CTaskTimerManager%3A%3AgetLastTimer()
&batchId=batch_sequence_No_2

response
{'status':'success','repliesCount':'3','data':[{'returnValue':'','requestedTaskId':'77187','requestedOperationName':'CTaskTimerManager::start()'},{'returnValue':{'ID':'77187','TITLE':'Добавить seed для companies и departments из csv.','DESCRIPTION':'','DESCRIPTION_IN_BBCODE':'Y','DECLINE_REASON':'','PRIORITY':'1','NOT_VIEWED':'N','STATUS_COMPLETE':'1','REAL_STATUS':'3','MULTITASK':'N','STAGE_ID':'1312','RESPONSIBLE_ID':'585','RESPONSIBLE_NAME':'Станислав','RESPONSIBLE_LAST_NAME':'Капитан','RESPONSIBLE_SECOND_NAME':'Сергеевич','RESPONSIBLE_LOGIN':'КапитанС','RESPONSIBLE_WORK_POSITION':'Инженер-программист','RESPONSIBLE_PHOTO':'','DATE_START':'14.11.2025 10:56:46','DURATION_FACT':'122','TIME_ESTIMATE':'0','TIME_SPENT_IN_LOGS':'7349','REPLICATE':'N','DEADLINE':'','DEADLINE_ORIG':'','START_DATE_PLAN':'','END_DATE_PLAN':'','CREATED_BY':'237','CREATED_BY_NAME':'Павел','CREATED_BY_LAST_NAME':'Капитан','CREATED_BY_SECOND_NAME':'Сергеевич','CREATED_BY_LOGIN':'Капитан','CREATED_BY_WORK_POSITION':'Ведущий инженер-программист','CREATED_BY_PHOTO':'4233','CREATED_DATE':'14.11.2025 10:41:24','CHANGED_BY':'237','CHANGED_DATE':'14.11.2025 10:57:22','STATUS_CHANGED_BY':'585','CLOSED_BY':'0','CLOSED_DATE':'','ACTIVITY_DATE':'14.11.2025 10:41:24','GUID':'{42515fe8-1028-40ac-96ad-c1738b58e02b}','XML_ID':'','MARK':'','ALLOW_CHANGE_DEADLINE':'Y','ALLOW_TIME_TRACKING':'Y','MATCH_WORK_TIME':'N','TASK_CONTROL':'N','ADD_IN_REPORT':'N','FORUM_TOPIC_ID':'73713','PARENT_ID':'77186','COMMENTS_COUNT':'1','SERVICE_COMMENTS_COUNT':'1','FORUM_ID':'8','SITE_ID':'s1','SUBORDINATE':'N','EXCHANGE_MODIFIED':'','EXCHANGE_ID':'','OUTLOOK_VERSION':'3','VIEWED_DATE':'14.11.2025 10:57:26','DEADLINE_COUNTED':'0','FORKED_BY_TEMPLATE_ID':'','SORTING':'','DURATION_PLAN_SECONDS':'0','DURATION_TYPE_ALL':'days','SCENARIO_NAME':['default'],'IS_REGULAR':'N','FLOW_ID':'','IS_MUTED':'N','IS_PINNED':'N','IS_PINNED_IN_GROUP':'N','UF_CRM_TASK':false,'UF_TASK_WEBDAV_FILES':['65870','65871'],'UF_MAIL_MESSAGE':'','UF_TASK_PRIORITY':'118','UF_TASK_TYPE':'120','UF_AUTO_294500252438':'0','STATUS':'3','STATUS_CHANGED_DATE':'14.11.2025 10:56:46','DURATION_PLAN':'0','DURATION_TYPE':'days','FAVORITE':'N','GROUP_ID':'191','AUDITORS':['527'],'ACCOMPLICES':[],'TAGS':[],'CHECKLIST':[],'FILES':[],'DEPENDS_ON':[]},'requestedTaskId':'77187','requestedOperationName':'CTaskItem::getTaskData()'},{'returnValue':{'TASK_ID':'77187','USER_ID':'585','TIMER_STARTED_AT':'1763117890','TIMER_ACCUMULATOR':'0','RUN_TIME':'0'},'requestedOperationName':'CTaskTimerManager::getLastTimer()'}],'batchId':'batch_sequence_No_2'}
