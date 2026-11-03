public without sharing class AccountShareWithout {
    public static Integer countAccounts() {
        return [SELECT COUNT() FROM Account];
    }
}