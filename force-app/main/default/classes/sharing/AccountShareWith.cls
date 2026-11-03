public with sharing class AccountShareWith {
    public static Integer countAccounts() {
        return [SELECT COUNT() FROM Account];
    }
}