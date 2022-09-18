public class CreateContactUtility
{
    public static void CreateContacts(list<account> lstAccounts)
    {
        system.debug('Account::'+lstAccounts);
        list<contact> lstContacts=new list<contact>();
        if(lstAccounts.size()>0)
        {
            for(Account acc:lstAccounts)
            {
                Contact cnt =new Contact(LastName=acc.name,Accountid=acc.id);
                lstContacts.add(cnt);
            } 
            insert lstContacts;
        }
    } 

}