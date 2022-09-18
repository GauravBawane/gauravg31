import { api, LightningElement } from 'lwc';

export default class LightningSpinnerLwc extends LightningElement {
    @api isLoaded=false;
    handleclick()
    {
         this.isLoaded= ! this.isLoaded;
    }
}