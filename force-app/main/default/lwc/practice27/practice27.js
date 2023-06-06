import { LightningElement, api, wire } from "lwc";
import CaseNumber from "@salesforce/schema/Case.CaseNumber";
import Status from "@salesforce/schema/Case.Status";
import { getFieldValue, getRecord } from "lightning/uiRecordApi";

export default class Practice27 extends LightningElement {
    // we will get recordId from record page directly 
    @api recordId;
    // based on recordId get the the entire case object and whatever fields you need 
    @wire(getRecord, {
        recordId: '$recordId',
        fields: [CaseNumber, Status]
    })
    caseRecord; 

    get caseNumber() {
        return getFieldValue(this.caseRecord.data, CaseNumber);
    }

    get caseStatus() {
        return getFieldValue(this.caseRecord.data, Status);
    }
    

}