/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class Product {
    private Object productId;
    private String productName;
    private String productImage;
    private int productAvailable;
    private int productSales;
    private double productPrice;
    private double productVoucher;
    private String productDescription;

    public Product() {
    }

    public Product(Object productId, String productName, String productImage, double productPrice, String productDescription) {
        this.productId = productId;
        this.productName = productName;
        this.productImage = productImage;
        this.productPrice = productPrice;
        this.productDescription = productDescription;
    }
    
    

    public Product(Object productId, String productName, String productImage, int productAvailable, int productSales, double productPrice, double productVoucher, String productDescription) {
        this.productId = productId;
        this.productName = productName;
        this.productImage = productImage;
        this.productAvailable = productAvailable;
        this.productSales = productSales;
        this.productPrice = productPrice;
        this.productVoucher = productVoucher;
        this.productDescription = productDescription;
    }

    public Object getProductId() {
        return productId;
    }

    public void setProductId(Object productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public int getProductAvailable() {
        return productAvailable;
    }

    public void setProductAvailable(int productAvailable) {
        this.productAvailable = productAvailable;
    }

    public int getProductSales() {
        return productSales;
    }

    public void setProductSales(int productSales) {
        this.productSales = productSales;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public double getProductVoucher() {
        return productVoucher;
    }

    public void setProductVoucher(double productVoucher) {
        this.productVoucher = productVoucher;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", productName=" + productName + ", productImage=" + productImage + ", productAvailable=" + productAvailable + ", productSales=" + productSales + ", productPrice=" + productPrice + ", productVoucher=" + productVoucher + ", productDescription=" + productDescription + '}';
    }
    
    
    
}
