public with sharing class AccountBatch implements Database.Batchable<SObject>, Database.Stateful {
    public Integer totalProcessed = 0;
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
        // что обрабатываем
        return Database.getQueryLocator([
            SELECT Id, Name, Description FROM Account
        ]);
    }

    public void execute(Database.BatchableContext bc, List<SObject> scope) {
        // один chunk (до N записей)
        List<Account> accs = (List<Account>) scope;
        for (Account a : accs) {
            a.Description = 'Batch';
        }
        update accs;
    }

    public void finish(Database.BatchableContext bc) {
        // один раз в конце: лог, email, следующий batch
    }
}
