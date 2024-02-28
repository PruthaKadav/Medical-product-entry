package productcurdapp.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcurdapp.model.Product;
import productcurdapp.model.login;

@Component
public class LoginDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	//get the single product
	public login getLogin(int id)
	{
		return this.hibernateTemplate.get(login.class, id);
	}
		
		
	//login for existing user
	public boolean adminlogin(login l)
	{
		boolean log = this.hibernateTemplate.contains(l);
		return log;
		
	}
	
	
	@Transactional
	public void createLogin(login l)
	{
		this.hibernateTemplate.saveOrUpdate(l);
		
	}
}
