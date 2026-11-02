public with sharing class AccountLabService {
    public static List<Account> findRecent(Integer lim) {
        return [
            SELECT Id, Name, Phone, Description
            FROM Account
            ORDER BY CreatedDate DESC
            LIMIT :lim
        ];
    }

    public static void stampDescription(Id accountId, String note) {
        Account a = [
            SELECT Id, Description
            FROM Account
            WHERE Id = :accountId
            LIMIT 1
        ];
        String old = a.Description == null ? '' : a.Description;
        a.Description = old + ' | ' + note;
        update a;
    }

    public static List<Account> createTemps(Integer count) {
        List<Account> batch = new List<Account>();
        for (Integer i = 0; i < count; i++) {
            batch.add(new Account(Name = 'VSCode Lab ' + i));
        }
        insert batch;
        return batch;
    }

    public static void deleteByIds(List<Id> ids) {
        if (ids == null || ids.isEmpty()) {
            return;
        }
        delete [SELECT Id FROM Account WHERE Id IN :ids];
    }
}