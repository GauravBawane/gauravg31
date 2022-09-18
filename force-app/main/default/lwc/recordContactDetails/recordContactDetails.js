import { LightningElement ,track,wire,api} from 'lwc';
import queryRelatedContacts from '@salesforce/apex/AccountControllerLwc.queryRelatedContacts';
export default class RecordContactDetails extends LightningElement {
    @api recordId;
    @track columns = [{label:'Account Id',fieldName:'AccountId',type:'text',sortable: true},
{label:'First Name',fieldName:'FirstName',type:'text', sortable: true},
{label:'Last Name',fieldName:'LastName',type:'text', sortable: true},
{label:'Email',fieldName:'Email',type:'email', sortable: true}];
@wire(queryRelatedContacts,{accId:'$recordId'})
contacts;
}