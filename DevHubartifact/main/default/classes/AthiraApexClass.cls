public class AthiraApexClass {
    public void testFunction(){
/*List<Account> myString=[SELECT name from account];
        for(Account acc:myString){
        String name=acc.name;
        System.debug(name);
        }*/
        
        
Map<Id,Account> mkv=new Map<Id,Account>([SELECT id,name from Account]);
Set<Id> mKeySet=mkv.KeySet();        
        for(Id i:mkeySet){
            Account acc=mkv.get(i);
             System.debug(acc);
        }      
}
}