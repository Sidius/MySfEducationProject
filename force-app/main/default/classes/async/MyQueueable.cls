public with sharing class MyQueueable implements Queueable {
    private Set<Id> accountIds;

    public MyQueueable(Set<Id> accountIds) {
        this.accountIds = accountIds;
    }

    public void execute(QueueableContext context) {
        // работа: SOQL, DML, логика
        System.debug('Job: ' + context.getJobId());
    }
}
