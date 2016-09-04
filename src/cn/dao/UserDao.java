package cn.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.model.User;

@Repository
public class UserDao extends BaseDao {
	public UserDao() {
		System.out.println("UserDao构造函数");
	}

	
	public List<User> getUsers(){
		String hql="from User";
		List<User> list= getSession().createQuery(hql).list();
		 return list;
	}


}
