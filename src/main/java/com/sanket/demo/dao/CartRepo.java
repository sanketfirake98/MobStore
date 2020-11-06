package com.sanket.demo.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.sanket.demo.model.Cart;

public interface CartRepo extends CrudRepository<Cart,Integer > {


}
