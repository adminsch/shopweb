package cn.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import cn.dao.UserDao;
import cn.model.Commodity;
import cn.model.Message;
import cn.model.SecondHand;
import cn.model.User;

import com.opensymphony.xwork2.ActionSupport;

@Repository
public class SecondHandDao extends BaseDao {

	public void addSecondHand(SecondHand secondHand) {
		getSession().save(secondHand);
	}

	public List<SecondHand> getSecondHands(String searchtext) {
		if(searchtext==null||searchtext.isEmpty()){
			Query query = getSession().createQuery("from Secondhand");
			return query.list();
		}else{
			Query query = getSession().createQuery("from Secondhand s where s.sname like :sname");
			return query.setParameter("sname", "%"+searchtext+"%").list();
		}
		
		 
	}

	public SecondHand getSecondHand(SecondHand secondHand) {
		String sql = "from Secondhand s where s.sid=:sid";
		List<SecondHand> list= getSession().createQuery(sql)
				.setParameter("sid", secondHand.getSid()).list();
		if(list.size()==1){
			return list.get(0);
		}else{
			return null;
		}

	}
	
	public int delSecondHand(SecondHand secondHand) {
		String sql = "delete Secondhand s where s.sid=:sid";
		return getSession().createQuery(sql)
				.setParameter("sid", secondHand.getSid()).executeUpdate();

	}

}
