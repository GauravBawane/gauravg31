import { LightningElement, api } from 'lwc';
import Name_FIELD from '@salesforce/schema/Account.Name';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';

export default class LightningReordFormEditExample extends LightningElement {
    @api recordId;
    @api objectApiName;
    fields=[Name_FIELD,REVENUE_FIELD,INDUSTRY_FIELD];
    handleSubmit(event)
    {
        console.log('Account detail:',event.detail.fields);
        console.log('Account name:',event.detail.fields.Name);
    }
}