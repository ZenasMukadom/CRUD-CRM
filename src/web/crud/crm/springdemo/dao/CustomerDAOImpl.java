package web.crud.crm.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import web.crud.crm.springdemo.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	public List<Customer> getCustomers() {
		
		//Get Hibernate Session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//Create Query and sort by first Name
		Query<Customer> theQuery = 
				currentSession.createQuery("from Customer order by firstName",Customer.class);
		
		//Execute Query
		List<Customer> customers = theQuery.getResultList();
		
		
		//Return the resutlts
		return customers;
	}


	@Override
	public void saveCustomer(Customer theCustomer) {
		
		//Get Hibernate Session
		Session currentSession = sessionFactory.getCurrentSession();
				
		//Save/update the customer
		currentSession.saveOrUpdate(theCustomer);
		
		
	
	}


	@Override
	public Customer getCustomer(int theId) {
		
		//Get Hibernate Session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//now retrieve from db using primarykey
		Customer theCustomer = currentSession.get(Customer.class,theId);
		
		return theCustomer;
		
		
	}


	@Override
	public void deleteCustomer(int theId) {
		
		//Get Hibernate Session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//delete the object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from Customer where Id=:customerId");
		theQuery.setParameter("customerId", theId);
		
		theQuery.executeUpdate();
		
				
	}

}
