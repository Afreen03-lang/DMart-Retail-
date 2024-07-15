import { LightningElement } from 'lwc';
 
export default class Parentmerchandise extends LightningElement {
    searchDetails=[];
    handlemerchandisedata(event){
        this.searchDetails = [];
        // alert("call from parent");
        try{
            event.detail.forEach(x=>{
                var merData = {
                    id:x.Id,
                    name:x.Name,
                    desc:x.MerchandiseDesc__c,
                    stock:x.MerchandiseStock__c,
                    price:x.MerchandisePrice__c
                }
                this.searchDetails.push(merData);
            })
        }catch(e){
            console.log(e);
        }
    }
}