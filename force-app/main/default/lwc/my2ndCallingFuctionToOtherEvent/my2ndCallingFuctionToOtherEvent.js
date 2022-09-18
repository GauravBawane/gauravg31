import { LightningElement } from 'lwc';

export default class My2ndCallingFuctionToOtherEvent extends LightningElement {
    greeting='World';
    changeHandler(event)
    {
        this.greeting=event.target.value;
    }
}