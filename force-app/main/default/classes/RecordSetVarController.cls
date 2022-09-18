public class RecordSetVarController {
    public List<Account> obj{get;set;}
    public String account{get;set;}
    public RecordSetVarController(ApexPages.StandardSetController controller ){
        obj=(List<Account>) controller.getSelected();
        
    }

}