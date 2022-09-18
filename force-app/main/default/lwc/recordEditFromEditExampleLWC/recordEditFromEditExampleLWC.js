import { LightningElement ,api} from 'lwc';

export default class RecordEditFromEditExampleLWC extends LightningElement {
    @api recordId;
    handleSubmit(event)
    {
        console.log('onsubmit event recordEditForm'+ event.detail.fields);
    }
    handleSuccess(event)
    {
        console.log('onsuccess event recordEditFrom' , event.detail.id);
    }
}