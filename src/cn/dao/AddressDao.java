package cn.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.model.Address;
import cn.model.User;

@Repository
public class AddressDao extends BaseDao {
	public void addAddr(Address address){
		getSession().save(address);
	}
	public List<Address> getAddrs(){
		String sql="from Address a";
		return getSession().createQuery(sql).list();
	}
	public int delAddress(Address address) {
		String sql = "delete Address a where a.aid=:aid";
		return getSession().createQuery(sql)
				.setParameter("aid", address.getAid()).executeUpdate();

	}
}
