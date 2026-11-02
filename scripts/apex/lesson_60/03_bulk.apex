List<Account> created = AccountLabService.createTemps(3);
System.debug('Inserted: ' + created.size());

List<Id> ids = new List<Id>();
for (Account a : created) {
    ids.add(a.Id);
    System.debug('Created ' + a.Id);
}

AccountLabService.deleteByIds(ids);
System.debug('Deleted. DML statements: ' + Limits.getDmlStatements());