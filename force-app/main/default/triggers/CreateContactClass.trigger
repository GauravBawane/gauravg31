trigger CreateContactClass on Account (After insert) {
    if(Trigger.isInsert)
    {
        CreateContactUtility.CreateContacts(trigger.new);
    }

}