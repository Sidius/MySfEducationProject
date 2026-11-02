App_Config__c cfg = App_Config__c.getInstance();
System.debug('Threshold: ' + cfg.Approval_Threshold__c);

App_Config__c org = App_Config__c.getOrgDefaults();
System.debug('Org: ' + org.Approval_Threshold__c);

Id uid = UserInfo.getUserId();
System.debug('instance: ' + App_Config__c.getInstance(uid));
System.debug('values: ' + App_Config__c.getValues(uid));

// App_Config__c cfg = App_Config__c.getOrgDefaults();
// if (cfg.Id == null) {
//     cfg.SetupOwnerId = UserInfo.getOrganizationId();
// }
// cfg.Approval_Threshold__c = 7500;
// upsert cfg;
// System.debug('Saved: ' + App_Config__c.getOrgDefaults().Approval_Threshold__c);

Endpoint__c e = Endpoint__c.getInstance('Dev');
System.debug(e.URL__c);