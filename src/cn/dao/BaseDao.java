package cn.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;


public class BaseDao {
	
	private static SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public BaseDao() {
		System.out.println("BaseDao构造函数");
	}

	public static Session getSession() {
		return sessionFactory.openSession();
	}
}
