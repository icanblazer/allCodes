@isTest
public class AssetHandlerTest {
    @isTest
    public static void testAssetHandlerUpdate() {
        List<Asset> astToInsert = new List<Asset>();
        Account acc = new Account(Name = 'Account 1');
        Insert acc;
        for(Integer i = 0; i < 200; i++){
            Asset ast = new Asset();
            ast.Name = 'Asset ' + i;
            ast.AccountId = acc.id;
            if(i < 100){
                ast.Status = 'Shipped';
            }
            else if(i < 200){
                ast.Status = 'Installed';
            }
            astToInsert.add(ast);
        }
        insert astToInsert;
        //Testing Insert
        List<Asset> assetList = [Select Id, Status from Asset];
        Assert.areEqual(200, assetList.size());
        
        for(Asset eachAsset : assetList){
            if(eachAsset.Status == 'Shipped'){
                eachAsset.Status = 'Installed';
            }else{
                eachAsset.Status = 'Shipped';
            }
        }
        update assetList;
        //Testing Update
        List<Asset> shippedAssetList = [Select Id, Status from Asset Where Status = 'Shipped'];
        List<Asset> installedAssetList = [Select Id, Status from Asset Where Status = 'Installed'];
        Assert.areEqual(100, shippedAssetList.size());
        Assert.areEqual(100, installedAssetList.size());
    }
}