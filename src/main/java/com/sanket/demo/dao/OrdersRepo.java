package com.sanket.demo.dao;

import org.springframework.data.repository.CrudRepository;


import com.sanket.demo.model.Orders;

public interface OrdersRepo extends CrudRepository<Orders,Integer> {

}
