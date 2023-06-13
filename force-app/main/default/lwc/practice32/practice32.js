import { LightningElement, track } from "lwc";
export default class Practice32 extends LightningElement {

    // firstName = 'Jon';
    // lastName = 'Snow';
    //To observe changes to 
    //the properties of an object 
    //or to the elements of an array, 
    //decorate the field with @track.
    //@track
    person = {
        firstName: 'Jon', 
        lastName : 'Snow'
    };

    @track
    sports = ['soccer','football','basketball']; 

    
    handleClick() {
        //this.lastName = 'Wick'; 
        //this.person.lastName = 'Wick'; 
        // if you do below you do not need @track
        // because reassigning the property value will re-render the page 
        // this.person = {
        //     firstName: 'Jon', 
        //     lastName : 'Wick'
        // };
        this.person = {...this.person , lastName : 'Wick' };
    }

    changeFirstItem() {
        // this.sports[0] = 'CODING !!!';
        // if you do below you do not need @track
        // because reassigning the property value will re-render the page 
        // this.sports =  ['CODING !!!','football','basketball'];
        const sportsCopy = [...this.sports];
        sportsCopy[0] = 'CODING !!!';
        this.sports = sportsCopy;
    }

}