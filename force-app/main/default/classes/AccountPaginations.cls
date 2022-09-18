public with sharing class AccountPaginations {
    private final Account acct;
    public AccountPaginations(ApexPages.StandardSetController controller)
    {
        this.acct=(Account)controller.getRecord();
        
    }

}