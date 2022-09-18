trigger CreatContact on Account (after insert) {
    if(Trigger.isInsert)
    {
        List<Contact> lstContacts = new List<contact>();
        for (Account acc :Trigger.new)
        {
            contact cnt =new contact (lastName =acc.name,AccountId=acc.id, email='Triggergauravm2.472@rediffmail.com');
            lstContacts.add(cnt);
        }
        insert lstContacts;
    }

}