public class ViewStateController {
    public integer a{get;set;}
    private integer b{get;set;}
    Transient integer c{get;set;}
    public Opportunity opp{get;set;}
    public ViewStateController()
    {
        a=20;
        b=30;
        c=40;
        opp=new Opportunity(name='Test', StageName='Test');
        
    }
    public void chengeData()
    {
        if(a==20)
        {
           a=2; 
        }
        if(b==30)
        {
        b=3;   
        } 
        if(c==40)
        {
            c=4;
        }
        else
        {
            c=40;
        }
        }

}