public with sharing class MyControllerSosl {
    private final Account account;
    
    public MyControllerSosl()
    {
   account =[Select id, name, site From Account Where Id = :ApexPages.currentPage().getParameters().get('id')];
        
    }
    public Account getAccount()
    {
        return Account;
    }
    public PageReference save()
    {
        update account;
        return null;
    }
}