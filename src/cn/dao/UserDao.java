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

	public User loginDao(User user) {
		Query query = getSession()
				.createQuery(
						"from User u where u.name=:name and u.password=:password")
				.setParameter("name", user.getName())
				.setParameter("password", user.getPassword());
		List<User> list = query.list();
		if(list.size()==0){
			return null;
		}else{
			return list.get(0);
		}
	}

	// 查看用户是否已注册
	public int checkUsername(String name) {
		Query query = getSession()
				.createQuery("from User u where u.name=:name").setParameter(
						"name", name);
		List<User> list = query.list();
		return list.size();
	}

}
