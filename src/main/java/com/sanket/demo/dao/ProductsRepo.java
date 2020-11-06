package com.sanket.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.sanket.demo.model.Products;

public interface ProductsRepo extends CrudRepository<Products,Integer> {
	
	@Query("select s from Products s where name like %?1%")
	List<Products> findByName(String prodname);
   

}
