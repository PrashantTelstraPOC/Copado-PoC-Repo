/************************************************************************************
* Name             : BatchAccountCACScheduler
* Description      : scheduler Class to invoke BatchDeleteaccountCAC
* Created Date     :  05/April/2018
* Created By       : BALBEN STEPHEN
*************************************************************************************
* Date         Change-Request          Modified By                    Description
*************************************************************************************
**************************************************************************************/

global class BatchAccountCACScheduler implements Schedulable {
   
   global void execute(SchedulableContext sc) {
      BatchDeleteAccountCAC be = new BatchDeleteAccountCAC();
      database.executebatch(be);
   }
}