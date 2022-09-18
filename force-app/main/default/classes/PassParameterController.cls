public with sharing class PassParameterController {
    public Account account{get;set;}
    public PassParameterController()
    {
        if (account==null)
            account= [select name from Account where id='0015i000009Oj3WAAS'];
    }
public PageReference Save()
{
    update account;
    PageReference secondpage=page.MyNewPage;
    secondpage.setRedirect(true);
    secondpage.getParameters().put('id',account.id);
    return  secondpage;
}
    public PageReference GoToNewPage()
    {
    PageReference secondpage=page.MyNewPage;
    secondpage.setRedirect(true);
    secondpage.getParameters().put('id',account.id);
    return  secondpage;
        }
    
}