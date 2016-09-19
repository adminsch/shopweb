package cn.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import cn.model.Commodity;
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
	
	
	public List<User> getUsers() {
		Query query = getSession().createQuery("from User u");
		return query.list();
	}
	public int delUser(User user) {
		String sql = "delete User u where u.uid=:uid";
		return getSession().createQuery(sql)
				.setParameter("uid", user.getUid()).executeUpdate();

	}
	
	public User getUser(int uid){
		Query query = getSession()
				.createQuery("from User u where u.uid=:uid").setParameter(
						"uid", uid);
		List<User> list = query.list();
		if(list.size()==0){
			return null;
		}else{
			return list.get(0);
		}
		
	}
	public void editUser(User user){
		if(user.getPassword()==null||user.getPassword().isEmpty()){
			 getSession()
					.createQuery("update User u set u.relname=:relname,u.phone=:phone where u.uid=:uid").setParameter(
							"relname", user.getRelname()).setParameter("phone", user.getPhone()).setParameter("uid", user.getUid()).executeUpdate();
		}else{
			getSession()
					.createQuery("update User u set u.relname=:relname,u.phone=:phone,u.password=:password where u.uid=:uid").setParameter(
							"relname", user.getRelname()).setParameter("phone", user.getPhone()).setParameter("password",user.getPassword()).setParameter("uid", user.getUid()).executeUpdate();
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
