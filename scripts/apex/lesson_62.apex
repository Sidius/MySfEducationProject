// Все записи
Map<String, Discount_Tier__mdt> all = Discount_Tier__mdt.getAll();

// Одна по Developer Name
Discount_Tier__mdt gold = Discount_Tier__mdt.getInstance('Gold');
System.debug(gold.Percent__c);

// SOQL
List<Discount_Tier__mdt> tiers = [
    SELECT DeveloperName, Percent__c
    FROM Discount_Tier__mdt
    WHERE Percent__c > 0
];

// App_Config__c cfg = App_Config__c.getOrgDefaults();
// if (cfg.Id == null) {
//     cfg.SetupOwnerId = UserInfo.getOrganizationId();
// }
// cfg.Some_Flag__c = true;
// upsert cfg;