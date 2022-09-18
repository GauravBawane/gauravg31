import { LightningElement,wire} from 'lwc';
import queryAccountsByEmployeesNumber from '@salesforce/apex/AccountListLWC.queryAccountsByEmployeesNumber';

export default class My3rdAccountSearch extends LightningElement {
    numberOfEmployees=null;
    handlerChange(event)
    {
      this.numberOfEmployees=event.detail.value;
    }
    reset()
    {
        this.numberOfEmployees=null;
    }
    @wire(queryAccountsByEmployeesNumber,{numberOfEmployees:'$numberOfEmployees'})
    accounts;
    
}