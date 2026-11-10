List<List<SObject>> found = [
    FIND 'lab'
    IN ALL FIELDS
    RETURNING
        Account(Id, Name, Description),
        Contact(Id, Description)
    LIMIT 10
];

List<Account> accounts = (List<Account>) found[0];
List<Contact> contacts = (List<Contact>) found[1];

System.debug('Accounts found: ' + accounts.size());
for (Account a : accounts) {
    System.debug('Name ' + a.Name);
    System.debug('ACC ' + a.Description);
}
System.debug('Contacts found: ' + contacts.size());
System.debug('SOSL queries: ' + Limits.getSoslQueries());