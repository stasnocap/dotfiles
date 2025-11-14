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


### Postgres check with date and is deleted

`
public partial class AddPeriodNoOverlapConstraint : Migration
{
    protected override void Up(MigrationBuilder migrationBuilder)
    {
        migrationBuilder.Sql("CREATE EXTENSION IF NOT EXISTS btree_gist;");

        migrationBuilder.Sql(@"
            ALTER TABLE ""YourTableName""
            ADD CONSTRAINT ""CK_YourTableName_NoOverlappingPeriods""
            EXCLUDE USING gist (
                ""Code"" WITH =,
                daterange(""OpenDate"", ""CloseDate"", '[]' ) WITH &&
            ) WHERE (""IsDeleted"" = false);
        ");
    }

    protected override void Down(MigrationBuilder migrationBuilder)
    {
        migrationBuilder.Sql(@"
            ALTER TABLE ""YourTableName"" 
            DROP CONSTRAINT ""CK_YourTableName_NoOverlappingPeriods"";
        ");

        migrationBuilder.Sql("DROP EXTENSION btree_gist;");
    }
}
`cs

