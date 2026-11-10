System.debug('Start SOQL ' + Limits.getQueries() + '/' + Limits.getLimitQueries());
System.debug('Start DML ' + Limits.getDmlStatements() + '/' + Limits.getLimitDmlStatements());

List<Account> accs = [
    SELECT Id, Name FROM Account LIMIT 3
];
// Один update на список — хорошо
for (Account a : accs) {
    a.Description = 'limits-demo';
}
if (!accs.isEmpty()) {
    update accs;
}

System.debug('End SOQL ' + Limits.getQueries());
System.debug('End DML ' + Limits.getDmlStatements());