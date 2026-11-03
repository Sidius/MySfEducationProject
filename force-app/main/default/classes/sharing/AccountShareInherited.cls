public inherited sharing class AccountShareInherited {
    public static Integer countAccounts() {
        return [SELECT COUNT() FROM Account];
    }
}