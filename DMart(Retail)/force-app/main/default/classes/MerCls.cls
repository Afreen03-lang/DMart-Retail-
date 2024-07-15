public class MerCls {
 
    public static void insertMerchandise(List<Merchandise__c> mer){
        Merchandise_Archive__c ma=new Merchandise_Archive__c();
        ma.Name=mer[0].name;
        ma.Merchandise_Archive_Price__c=mer[0].MerchandisePrice__c;
        ma.Merchandise_Archive_Stock__c=mer[0].MerchandiseStock__c;
        ma.Merchandise_Archive_Description__c=mer[0].MerchandiseDesc__c;
        insert ma;
    }
}