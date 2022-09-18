public with sharing class AccountControllerLwc {
    @AuraEnabled(cacheable=true)
    
    public static List<Contact> queryRelatedContacts(String accId) 
    {
return [SELECT Id, AccountId, FirstName,LastName,Email,Phone ,Account.Name FROM Contact WHERE AccountId =:accId];
    }
}
