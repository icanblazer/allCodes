public class AssetHandler {
    public static void assetHandlerUpdate(List<Asset> assetTriggerNew, 
List<Asset> assetTriggerOld,
    Map<id, Asset> assetTriggerNewMap, Map<id, Asset> 
assetTriggerOldMap) {
        if(assetTriggerNewMap != null){
            //For update as for update Trigger.newMap is available
            Set<id> assetIdSet = assetTriggerNewMap.keySet();
            for(Id assetId : assetIdSet){
                if(assetTriggerNewMap.get(assetId).Status != 
assetTriggerOldMap.get(assetId).Status && 
assetTriggerNewMap.get(assetId).Status == 'Shipped'){
                    assetTriggerNewMap.get(assetId).Description = 
'Asset is shipped';
                }
                if(assetTriggerNewMap.get(assetId).Status != 
assetTriggerOldMap.get(assetId).Status && 
assetTriggerNewMap.get(assetId).Status == 'Installed'){
                    assetTriggerNewMap.get(assetId).Description = 
'Asset is Installed';
                }
            }
        }else{
            //For insert
            for(Asset eachAsset : assetTriggerNew){
                if (eachAsset.Status == 'Shipped') {
                    eachAsset.Description = 'Asset is shipped';
                }else if(eachAsset.Status == 'Installed'){
                    eachAsset.Description = 'Asset is Installed';
                }
            }
        }
    }
}