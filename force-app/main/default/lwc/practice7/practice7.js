import { LightningElement } from 'lwc';

export default class Practice7 extends LightningElement {

    on = false; 

    get theLabel() {
        // if (this.on){
            return this.on ? "Off" : "On"; 
        // }else {
        //     return "On";
        // }
    }

    handleToggleChange(event) {
        
        console.log(event.target.label); 
        console.log(event.target.checked); 

        this.on = event.target.checked; 
    }

}