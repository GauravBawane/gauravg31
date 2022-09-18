public class MyControllerExtention 
{
    private final Account acct;
    public MyControllerExtention(ApexPages.StandardController stdcontroller)
    {
    this.acct=(Account)stdcontroller.getRecord();
        
    }
public String getGreeting()
{
    return'Hello'+acct.name+'('+ acct.id +')';
}
}