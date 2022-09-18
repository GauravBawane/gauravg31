public class NewAndExistingController {
    public Account account{get; private set;}
    public NewAndExistingController()
    {
        ID Id =ApexPages.currentPage().getParameters().get('id');
        account = (id==null) ? new Account():[SELECT name,phone,industry FROM Account WHERE ID=:id];
    }
public PageReference save()
{
    try
    {
        upsert Account;
       
    }
    catch(System.DmlException e)
    {
        ApexPages.addMessages(e);
        return null;
     }
    PageReference rediectSuccess=new ApexPages.StandardController(Account).view();
    return(rediectSuccess);
}
}