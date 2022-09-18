public class Pageination1 {
    private integer totalRec=0;
     private integer offsetSize=0;
 private integer limitSize=5;
    public boolean previous; 
    public boolean next;
    
    public Pageination1(){
        totalRec=[select count() From account] ;
    }
    public list<account> getacclist()
    {
      list<account> acc= Database.Query('Select Name,website,annualRevenue,description, Type from account limit '+limitsize+' offset '+offsetsize+'');
        return acc;
    }
    public void previous()
    {
        offsetsize=offsetsize - limitSize;
    }
    public void next()
    {
        offsetsize=offsetsize +  limitSize;
    }
    
    
    public boolean getHasNext()
    {
        next= offsetsize <= totalRec ;
        return next;
    }
    public boolean getHasPrevious()
    {
        previous= offsetsize > 0;
        return previous;
    }
    
}