package com.tewodros_mekonnen.springdemo.service;

import java.util.List;

import com.tewodros_mekonnen.springdemo.entity.Customer;

public interface CustomerService {
	
	public void saveCustomer(Customer newCustomer);

	public List<Customer> getCustomers();

}