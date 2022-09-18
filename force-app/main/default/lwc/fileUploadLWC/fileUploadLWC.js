import { LightningElement,api } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class FileUploadLWC extends LightningElement {
    @api recordId;
    get acceptedFormats()
    {
        return['.pdf','.png','.jpg','.jpeg'];
    }
    handleUploadFinished(event)
    {
        const uploadedFiles =event.detail.files;
        let uploadedFilesName ='';
        for(let i=0; i<uploadedFiles.lenght; i++)
        {
            uploadedFilesName += uploadedFiles[i].name +',';
        }
        this.dispatchEvent(
            new ShowToastEvent({
                title:'Success',
                message:uploadedFiles.lenght + 'Files uploaded Successfully: '+uploadedFilesName,
                variant:'success',
            }),
        );
    }


}