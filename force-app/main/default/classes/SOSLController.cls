public with sharing class SOSLController {
    public List<Opportunity> oppList{get;set;}
    public List<Contact> contList{get;set;}
    public List<Account> acctList{get;set;}
    public String searchStr{get;set;}
public SOSLController()
{
    
}
    public void soslDemo()
    {
   oppList=new List <Opportunity>();
   contList=new List<Contact> ();
   acctList=new List<Account>();
     if(searchStr.length() > 1)
     {
         String searchStr1='*'+searchStr+'*';
         String searchQuery='Find\''+searchStr1+'\'IN ALL FIELDS RETURNING Account(ID,Name,Type),Contact(Name,Email),Opportunity(Name,StageName)';
         List<List<sObject>>searchList=search.query(searchQuery);
   
         acctList=((List<Account>)searchList[0]);
          contList=((List<Contact>)searchList[1]);
         oppList=((List<Opportunity>)searchList[2]);
          
        if(oppList.size()==0 && contList.size()==0 && acctList.size()==0 )
        {
         ApexPages.Message myMsg=new ApexPages.Message(ApexPages.Severity.ERROR,'Sorry,no results returned with maching String..');
         ApexPages.addMessage(myMsg);
           return;
        }
    }
        else
        {
          ApexPages.Message myMsg1=new ApexPages.Message(ApexPages.Severity.ERROR,'Please enter atlist Two Charecters');
            ApexPages.addMessage(myMsg1);
            return;
        }
}
}