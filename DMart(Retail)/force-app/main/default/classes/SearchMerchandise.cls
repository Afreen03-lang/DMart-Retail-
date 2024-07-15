public class SearchMerchandise {
    @auraenabled(cacheable=true)
    public static List<Merchandise__c> getAllMerchandise(String mName){
        String merName = '%' + mName + '%';
        List<Merchandise__c> mer = [select id,Name,MerchandiseStock__c,MerchandisePrice__c,MerchandiseDesc__c from Merchandise__c where Name like : merName];
        return mer;
    }
        public static List<Merchandise__c> getAllMerchandise(Integer mStock){
        String merStock = '%' + mStock + '%';
        List<Merchandise__c> mer = [select id,Name,MerchandiseStock__c,MerchandisePrice__c,MerchandiseDesc__c from Merchandise__c where Name like : merStock];
        return mer;
    }
 
 
}