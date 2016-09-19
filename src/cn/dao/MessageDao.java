package cn.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import cn.model.Commodity;
import cn.model.Message;
import cn.model.Orders;
import cn.model.User;

@Repository
public class MessageDao extends BaseDao {

	public void addPj(Message message) {
		String sql="select o.cid from Orders o where o.batchno=:batchno";
		String hql="insert into message(uid,content,mdate,cid,rate) values(:uid,:content,NOW(),:cid,:rate)";
		List<Integer> list=getSession().createSQLQuery(sql).setParameter("batchno", message.getBatchno()).list();
		for (int i = 0; i < list.size(); i++) {
			getSession().createSQLQuery(hql).setParameter("uid", message.getUser().getUid()).setParameter("content", message.getContent())
			.setParameter("cid", list.get(i)).setParameter("rate", message.getRate()).executeUpdate();
		}
	}

	public List<Message> getMsg(int uid) {
		String sql = "select c.cid,c.cname,c.price,c.discount,c.faddr,c.pictureFileName,m.mid,c.cdesc,c.stock,m.content,m.rate,m.mdate "
				+ "from Commodity c,Message m where m.cid=c.cid and m.uid=:uid order by m.mid desc";
		
		List<Object[]> list = getSession().createSQLQuery(sql)
				.setParameter("uid", uid).list();
		List<Message> messages = new ArrayList<Message>();
		for (int i = 0; i < list.size(); i++) {
			Commodity commodity = new Commodity();
			
			Message message = new Message();
			commodity.setCid((int) list.get(i)[0]);
			commodity.setCname((String) list.get(i)[1]);
			commodity.setPrice((double) list.get(i)[2]);
			commodity.setDiscount((double) list.get(i)[3]);
			commodity.setFaddr((String) list.get(i)[4]);
			commodity.setPictureFileName((String) list.get(i)[5]);
			message.setMid((int) list.get(i)[6]);
			commodity.setCdesc((String) list.get(i)[7]);
			commodity.setStock((int) list.get(i)[8]);
			message.setContent((String) list.get(i)[9]);
			message.setRate((int) list.get(i)[10]);
			message.setMdate((Date) list.get(i)[11]);
			message.setCommodity(commodity);
			messages.add(message);
		}
		return messages;
	}

	
}
