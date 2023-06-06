public class InventoryManager {
    String productName;
    String productCode;
    Integer costPrice;
    Integer sellingPrice;
    public static Integer productCount = 0;
    
    public InventoryManager() { 
        productCount++;
    }

    public InventoryManager(string productName, string productCode) { 
        productCount++;
        this.productName = productName;
        this.productCode = productCode;
    }

    //set methods
    public void setProductName(string name) {
        this.productName = name;
    }

    public void setProductCode(string code) {
        this.productCode = code;
    }

    public void setCostPrice(integer costPrice){
        this.costPrice = costPrice;
    }

    public void setSellingPrice(integer sellingPrice){
        this.sellingPrice = sellingPrice;
    }

    //get methods

    public string getProductName(){
        return  productName;
    } 

    public string getProductCode(){
        return productCode;
    } 

    public Integer getCostPrice() {
        return costPrice;
    }
    
    public Integer getSellingPrice() {
        return sellingPrice;
    }

    public void productDisplay() {

        System.debug(getSellingPrice());
        
        System.debug(productName + ' - ' + productCode +  ' => ' + 'cost: '+ costPrice + ' - ' + 'price: '+ sellingPrice);
        System.debug(productCount);

        Decimal profitPercent = (sellingPrice - costPrice)*100/costPrice;
      
        System.debug('profit percent: ' + profitPercent + '%');

        String productRating;

        if (profitPercent >= 20) {
            productRating = 'Star Product';    
        } else {
            productRating = 'Average Product';
        }

        System.debug(productRating);

    }




}