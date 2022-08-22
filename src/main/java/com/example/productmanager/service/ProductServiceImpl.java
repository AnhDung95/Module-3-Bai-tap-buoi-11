package com.example.productmanager.service;

import com.example.productmanager.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;
    static {
        products= new HashMap<>();
        products.put(1,new Product(1,"Thịt",100,"Thịt lợn","Dũng company"));
        products.put(2,new Product(2,"Cá",150,"Cá chép","Hiền company"));
        products.put(3,new Product(3,"Tôm",170,"Tôm sú","Trọng company"));
        products.put(4,new Product(4,"Trứng",110,"Trứng gà","Ba company"));
        products.put(5,new Product(5,"Sữa",120,"Vinamilk","Phương company"));

    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
