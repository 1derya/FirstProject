import { LightningElement } from 'lwc';

export default class Practice2 extends LightningElement {
     
    firstName = "Derya";
    lastName  = "D";

    // getter is a type of function 
    // that return value
    // usually used for getting calculated result
    // from the fields instead of creating new fields

    get fullName(){
        //return this.firstName + ' ' + this.lastName;
        return `${this.firstName}  ${this.lastName}   `;
    }

    //add a functional| method called handle click
    //this method will executed when the button is clicked
    //since we have 
    handleClick(){
        console.log('Button is Clicked');
    }
       






}