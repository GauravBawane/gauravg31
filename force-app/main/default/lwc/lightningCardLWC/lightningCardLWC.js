import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation';
export default class LightningCardLWC extends NavigationMixin (LightningElement) 
{
    handelButtonClick()
    {
        this[NavigationMixin.Navigate](
            {
                type:'standard__objectPage',
                attributes:
                {
                    objectApiName:'Opportunity',
                    actionName:'list'
                    
                }
            });
         
    }
}