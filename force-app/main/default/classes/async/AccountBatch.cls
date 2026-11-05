public class AccountBatch implements Database.Batchable<SObject> {
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT Id, Name FROM Account');
    }
    public void execute(Database.BatchableContext bc, List<SObject> scope) {
        // обработка chunk
    }
    public void finish(Database.BatchableContext bc) {}
}
// Database.executeBatch(new AccountBatch(), 200);