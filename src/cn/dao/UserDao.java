package cn.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import cn.model.User;

@Repository
public class UserDao extends BaseDao {
	public void registDao(User user) {
		getSession().save(user);
	}
	
	

	//查看用户是否已注册
	public int checkUsername(String name){
		Query query=getSession().createQuery("from User u where u.name=:name").setParameter("name", name);
		List<User> list=query.list();
		return list.size();
	}

}
