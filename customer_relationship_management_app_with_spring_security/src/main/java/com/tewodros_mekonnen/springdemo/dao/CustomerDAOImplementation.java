package com.tewodros_mekonnen.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tewodros_mekonnen.springdemo.entity.Customer;

@Repository
public class CustomerDAOImplementation implements CustomerDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveCustomer(Customer newCustomer) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(newCustomer);
		
	}

	@Override
	public List<Customer> getCustomers() {
		
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query... sort by last name
		Query<Customer> theQuery = 
				currentSession.createQuery("from Customer order by lastName",
											Customer.class);
		
		// execute query and get result list
		List<Customer> customers = theQuery.getResultList();
				
		// return result
		return customers;
	}

}
