List<Account> batch = new List<Account>();
for (Integer i = 0; i < 5; i++) {
    batch.add(new Account(Name = 'Trigger Lab ' + i));
}
insert batch;
System.debug('Inserted 5 in one DML');