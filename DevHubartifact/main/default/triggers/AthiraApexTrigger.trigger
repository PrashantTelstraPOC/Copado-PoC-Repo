trigger AthiraApexTrigger on Account (before insert) {
    for(Account acc : Trigger.New){
        acc.SLAExpirationDate__c = Date.today().addDays(180);
    }
}