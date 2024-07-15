@RestResource(urlMapping='/myMerchandise/*')
global class WebServices {
    @httpPost
    global static void insertMerc(List <Merchandise__c> merc){
    	List <Merchandise__c> mc = new List <Merchandise__c>();
        for(Merchandise__c m : merc){
            Merchandise__c merch = new Merchandise__c();
            merch.Name = m.Name;
            merch.MerchandiseDesc__c = m.MerchandiseDesc__c;
            merch.MerchandiseStock__c = m.MerchandiseStock__c;  
            merch.MerchandisePrice__c = m.MerchandisePrice__c;
            mc.add(merch);

        }

        insert mc;

}

 
}