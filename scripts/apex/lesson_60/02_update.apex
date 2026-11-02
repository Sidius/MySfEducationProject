List<Account> accs = AccountLabService.findRecent(1);
if (accs.isEmpty()) {
    System.debug('No accounts');
} else {
    Id accId = accs[0].Id;
    AccountLabService.stampDescription(accId, 'vscode-lab');
    Account check = [
        SELECT Id, Name, Description FROM Account WHERE Id = :accId
    ];
    System.debug('DESCRIPTION');
    System.debug(check.Name);
    System.debug(check.Description);
}