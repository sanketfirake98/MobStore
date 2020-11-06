package com.sanket.demo.dao;

import org.springframework.data.repository.CrudRepository;
import com.sanket.demo.model.Data;

public interface UserdataRepo extends CrudRepository<Data,String> {

}
