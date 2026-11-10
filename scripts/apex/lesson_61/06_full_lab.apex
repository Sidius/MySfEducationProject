// create
List<Account> temps = AccountLabService.createTemps(2);

// soql
List<Account> recent = AccountLabService.findRecent(5);
System.debug('Recent count: ' + recent.size());

// update first temp
if (!temps.isEmpty()) {
    AccountLabService.stampDescription(temps[0].Id, 'full-lab');
}

// sosl
List<List<SObject>> found = [
    FIND 'VSCode'
    IN NAME FIELDS
    RETURNING Account(Id, Name)
];
System.debug('SOSL accounts: ' + found[0].size());

// cleanup
List<Id> ids = new List<Id>();
for (Account t : temps) {
    ids.add(t.Id);
}
AccountLabService.deleteByIds(ids);

System.debug('Done. Queries=' + Limits.getQueries()
    + ' DML=' + Limits.getDmlStatements()
    + ' SOSL=' + Limits.getSoslQueries());