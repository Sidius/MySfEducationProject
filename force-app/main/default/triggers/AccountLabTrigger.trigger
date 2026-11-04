trigger AccountLabTrigger on Account (before insert, before update) {
    // System.debug('Size: ' + Trigger.new.size());
    // for (Account a : Trigger.new) {
    //     if (String.isBlank(a.Description)) {
    //         a.Description = 'Lab trigger';
    //     }
    // }

    // Set<Id> accIds = new Set<Id>();
    // for (Account a : Trigger.new) {
    //     accIds.add(a.Id);
    // }
    // List<Contact> cons = [
    //     SELECT Id, AccountId
    //     FROM Contact
    //     WHERE AccountId IN :accIds
    // ];
    // System.debug('Contacts total: ' + cons.size());

    // Trigger_Control__c ctl = Trigger_Control__c.getInstance();
    // if (ctl != null && ctl.Bypass_Account__c == true) {
    //     System.debug('Bypassed');
    //     return;
    // }
    // for (Account a : Trigger.new) {
    //     if (String.isBlank(a.Description)) {
    //         a.Description = 'Lab trigger';
    //     }
    // }

    Trigger_Control__c ctl = Trigger_Control__c.getInstance();
    if (ctl != null && ctl.Bypass_Account__c == true) {
        return;
    }
    for (Account a : Trigger.new) {
        if (String.isBlank(a.Description)) {
            a.Description = 'Lab trigger';
        }
    }
}