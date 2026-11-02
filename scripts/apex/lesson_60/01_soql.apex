List<Account> accs = AccountLabService.findRecent(5);
for (Account a : accs) {
    System.debug(a.Id + ' ' + a.Name);
}
System.debug('SOQL used: ' + Limits.getQueries());