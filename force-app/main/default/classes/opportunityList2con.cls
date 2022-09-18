public with sharing class opportunityList2con {
    public ApexPages.StandardSetController setCon
    {
        get
        {
            if(setCon==null)
            {
                setCon =new ApexPages.StandardSetController(Database.getQueryLocator([SElect name, CloseDate from opportunity]));
            }
            return SetCon;
        }
        set;
        
    }
    public List<Opportunity> getOpportunities()
    {
        return (List<Opportunity>) setCon.getRecords();
    }

}