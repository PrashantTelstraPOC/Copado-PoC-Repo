/************************************************************************************
* Name             : BatchAccountCACScheduler
* Description      : Test class for BatchAccountCACScheduler
* Created Date     : 05/April/2018
* Created By       : BALBEN STEPHEN
*************************************************************************************
* Date         Change-Request          Modified By                    Description
*************************************************************************************
**************************************************************************************/

@isTest
public class BatchAccountCACScheduler_Test {
public static testMethod void testSchedule()
 {
    Test.startTest();
    BatchAccountCACScheduler sheduledProcess = new BatchAccountCACScheduler();
    String schCron = '0 0 0 ? * * *'; 
    //system.schedule('Test BatchAccountCACScheduler', schCron, sheduledProcess);
    String jobid = System.schedule('Test BatchAccountCACScheduler', schCron, sheduledProcess);
    CronTrigger ct = [Select id , CronExpression from CronTrigger where id = :jobId];
    System.assertEquals(schCron,ct.CronExpression);
    Test.stopTest(); 
 }
}