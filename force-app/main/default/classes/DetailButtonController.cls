public with sharing class DetailButtonController {
    private Apexpages.StandardController standardController1;
        public string greeting{get;set;}
public  DetailButtonController(Apexpages.StandardController standardController)
{
    this.standardController1= standardController;
   
}
    public PageReference doSomthing()
    {
//Id recordId =standardController1.getId(); 
    contact record=(contact)standardController1.getRecord();
        greeting ='Hello' +record.Id+'';
        return null;
    }
}