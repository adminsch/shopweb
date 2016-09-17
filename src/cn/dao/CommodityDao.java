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
import cn.model.User;

import com.opensymphony.xwork2.ActionSupport;

@Repository
public class CommodityDao extends BaseDao {

	public void addCommodity(Commodity commodity) {
		getSession().save(commodity);
	}

	public List<Commodity> getCommoditys(String searchtext) {
		if(searchtext==null||searchtext.isEmpty()){
			Query query = getSession().createQuery("from Commodity c");
			return query.list();
		}else{
			Query query = getSession().createQuery("from Commodity c where c.cname like :cname");
			return query.setParameter("cname", "%"+searchtext+"%").list();
		}
		
		 
	}

	public int delCommodity(Commodity commodity) {
		String sql = "delete Commodity c where c.cid=:cid";
		return getSession().createQuery(sql)
				.setParameter("cid", commodity.getCid()).executeUpdate();

	}
	public Commodity getCommodity(Commodity commodity) {
		String sql = "from Commodity c where c.cid=:cid";
		List<Commodity> list= getSession().createQuery(sql)
				.setParameter("cid", commodity.getCid()).list();
		if(list.size()==1){
			return list.get(0);
		}else{
			return null;
		}

	}

	public List<Message> getMessage(Commodity commodity) {
		String sql="select m.mid,m.uid,m.content,m.mdate,m.cid,m.rate,u.name from Message m,User u where u.uid=m.uid and m.cid=:cid";
		List<Object[]> list=getSession().createSQLQuery(sql).setParameter("cid", commodity.getCid()).list();
		List<Message> messages=new ArrayList<Message>();
		for (int i = 0; i < list.size(); i++) {
			Message message=new Message();
			User user=new User();
			Commodity c=new Commodity();
			message.setMid((int) list.get(i)[0]);
			message.setContent((String) list.get(i)[2]);
			message.setMdate((Date) list.get(i)[3]);
			message.setRate((int) list.get(i)[5]);
			user.setUid((int) list.get(i)[1]);
			user.setName((String) list.get(i)[6]);
			c.setCid((int) list.get(i)[4]);
			message.setUser(user);
			message.setCommodity(c);
			messages.add(message);
		}
		return messages;
	}

	public List<Commodity> getHot() {
		String sql="select c.cid,c.cname,c.price,c.pictureFileName from Commodity c order by c.record desc limit 0,7";
		List<Object[]> list=getSession().createSQLQuery(sql).list();
		List<Commodity> commodities=new ArrayList<Commodity>();
		for (int i = 0; i < list.size(); i++) {
			Commodity commodity=new Commodity();
			commodity.setCid((int) list.get(i)[0]);
			commodity.setCname((String) list.get(i)[1]);
			commodity.setPrice((double) list.get(i)[2]);
			commodity.setPictureFileName((String) list.get(i)[3]);
			commodities.add(commodity);
		}
		return commodities;
	}

}
