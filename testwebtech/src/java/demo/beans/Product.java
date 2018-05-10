package demo.beans;

import java.math.BigDecimal;

public class Product {
    private final String prodId;
    private final String description;
    private final BigDecimal price;
    private final String image;

    public Product(String prodId, String description, BigDecimal price, String image) {
        this.prodId = prodId;
        this.description = description;
        this.price = price;
        this.image = image;
    }

    public String getProdId() {
        return prodId;
    }

    public String getDescription() {
        return description;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public String getImage() {
        return image;
    }   
}
