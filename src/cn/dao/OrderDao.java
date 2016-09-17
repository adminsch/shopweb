package cn.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import cn.model.Commodity;
import cn.model.Orders;
import cn.model.User;

@Repository
public class OrderDao extends BaseDao {

	public void addOrder(Orders order) {
		getSession().save(order);
	}

	public Orders getOrders(String batchno) {
	/*	String sql = "select c.cid,c.cname,c.price,c.discount,c.faddr,c.pictureFileName,o.oid,o.ctotal,o.cnum,o.batchno,o.uid,u.integral,c.cdesc, o.cprice,c.stock "
				+ " from Orders o ,Commodity c,User u"
				+ " where o.uid=u.uid and o.cid=c.cid and o.batchno=:batchno";*/
		String sql = "select c.cid,c.cname,c.price,c.discount,c.faddr,c.pictureFileName,o.oid,o.CTOTAL,o.CNUM,o.batchno,o.uid,u.integral,c.cdesc, o.cprice,c.stock "
				+ "from Orders o ,Commodity c,User u where o.batchno=:batchno and o.uid=u.uid and o.cid=c.cid";
		
		List<Object[]> list = getSession().createSQLQuery(sql)
				.setParameter("batchno", batchno).list();
		//List<Orders> orders = new ArrayList<Orders>();
		double totle = 0;
		Orders order = new Orders();
		for (int i = 0; i < list.size(); i++) {
			Commodity commodity = new Commodity();
			User user = new User();
			commodity.setCid((int) list.get(i)[0]);
			commodity.setCname((String) list.get(i)[1]);
			commodity.setPrice((double) list.get(i)[2]);
			commodity.setDiscount((double) list.get(i)[3]);
			commodity.setFaddr((String) list.get(i)[4]);
			commodity.setPictureFileName((String) list.get(i)[5]);
			order.setOid((int) list.get(i)[6]);
			order.setCtotal((double) list.get(i)[7]);
			order.setCnum((int) list.get(i)[8]);
			order.setBatchno((String) list.get(i)[9]);
			user.setUid((int) list.get(i)[10]);
			user.setIntegral((int) list.get(i)[11]);
			commodity.setCdesc((String) list.get(i)[12]);
			order.setCprice((double) list.get(i)[13]);
			commodity.setStock((int) list.get(i)[14]);
			order.setCname((String) list.get(i)[1]);
			order.setCommodity(commodity);
			order.setUser(user);
		//	orders.add(order);
			totle += order.getCtotal();
			order.setBatchtotle(totle);
		}
		return order;
	}

	public void update(Orders order) {
		String sql = "update Orders o set o.status=1, o.saddr=:saddr where o.oid=:oid";
		getSession().createQuery(sql).setParameter("saddr", order.getSaddr())
				.setParameter("oid", order.getOid()).executeUpdate();

		String hql = "select c.cid,o.cnum,o.user.uid from Orders o, Commodity c where o.commodity.cid=c.cid and o.oid=:oid";
		String hql1 = "update Commodity c set c.stock=:stock,c.record=:record where c.cid=:cid";
		String sql1 = "select c.stock,c.record from Commodity c where c.cid=:cid";
		String sql2 = "update User u set u.integral=:integral where u.uid=:uid";
		String sql3 = "select u.integral from User u where u.uid=:uid";
		List<Object[]> orders = getSession().createQuery(hql)
				.setParameter("oid", order.getOid()).list();
		for (int i = 0; i < orders.size(); i++) {
			List<Object[]> list = getSession().createQuery(sql1)
					.setParameter("cid", orders.get(i)[0]).list();
			getSession()
					.createQuery(hql1)
					.setParameter(
							"stock",
							Integer.parseInt(list.get(0)[0].toString())
									- Integer.parseInt(orders.get(i)[1]
											.toString()))
					.setParameter(
							"record",
							Integer.parseInt(list.get(0)[1].toString())
									+ Integer.parseInt(orders.get(i)[1]
											.toString()))
					.setParameter("cid", orders.get(i)[0]).executeUpdate();
		}
		List<Integer> obj = getSession().createQuery(sql3)
				.setParameter("uid", orders.get(0)[2]).list();
		if(obj.get(0)!=null){
			getSession()
			.createQuery(sql2)
			.setParameter(
					"integral",
					obj.get(0)+ (int) order.getBatchtotle())
			.setParameter("uid", orders.get(0)[2]).executeUpdate();
		}

	}

	public List<Orders> getGw(Orders o) {
		// String sql =
		// "from Orders o ,Commodity c,User u where o.batchno=:batchno and o.isgw=1";
		String sql = "select c.cid,c.cname,c.price,c.discount,c.faddr,c.pictureFileName,o.oid,o.CTOTAL,o.CNUM,o.batchno,o.uid,u.integral,c.cdesc, o.cprice,c.stock "
				+ "from Orders o ,Commodity c,User u where o.batchno=:batchno and u.uid=o.uid and u.uid=:uid and isgw=1";
		List<Object[]> list = getSession().createSQLQuery(sql)
				.setParameter("batchno", o.getBatchno())
				.setParameter("uid", o.getUser().getUid()).list();
		List<Orders> orders = new ArrayList<Orders>();
		double totle = 0;
		for (int i = 0; i < list.size(); i++) {
			Orders order = new Orders();
			Commodity commodity = new Commodity();
			User user = new User();
			commodity.setCid((int) list.get(i)[0]);
			commodity.setCname((String) list.get(i)[1]);
			commodity.setPrice((double) list.get(i)[2]);
			commodity.setDiscount((double) list.get(i)[3]);
			commodity.setFaddr((String) list.get(i)[4]);
			commodity.setPictureFileName((String) list.get(i)[5]);
			order.setOid((int) list.get(i)[6]);
			order.setCtotal((double) list.get(i)[7]);
			order.setCnum((int) list.get(i)[8]);
			order.setBatchno((String) list.get(i)[9]);
			user.setUid((int) list.get(i)[10]);
			user.setIntegral((int) list.get(i)[11]);
			commodity.setCdesc((String) list.get(i)[12]);
			order.setCprice((double) list.get(i)[13]);
			commodity.setStock((int) list.get(i)[14]);
			order.setCommodity(commodity);
			order.setUser(user);
			orders.add(order);
			totle += order.getCtotal();
			order.setBatchtotle(totle);
		}
		return orders;
	}

	public void updateGw(Orders order) {
		String sql = "update Orders o set o.cnum=:cnum,o.ctotal=:ctotal where o.oid=:oid";
		getSession().createQuery(sql).setParameter("cnum", order.getCnum())
				.setParameter("ctotal", order.getCtotal())
				.setParameter("oid", order.getOid()).executeUpdate();
	}

	public void delShop(Orders order) {
		String sql = "delete Orders o where o.batchno=:batchno and isgw=1";
		getSession().createQuery(sql)
				.setParameter("batchno", order.getBatchno()).executeUpdate();

	}

	public void payGw(Orders order) {
		String sql = "update Orders o set o.isgw=:isgw,o.saddr=:saddr,o.status=1 where o.batchno=:batchno";
		String hql = "select c.cid,o.cnum, o.user.uid from Orders o, Commodity c where o.commodity.cid=c.cid and o.batchno=:batchno";
		String hql1 = "update Commodity c set c.stock=:stock,c.record=:record where c.cid=:cid";
		String sql1 = "select c.stock,c.record from Commodity c where c.cid=:cid";
		String sql2 = "update User u set u.integral=:integral where u.uid=:uid";
		String sql3 = "select u.integral from User u where u.uid=:uid";
		getSession().createQuery(sql).setParameter("isgw", 0)
				.setParameter("saddr", order.getSaddr())
				.setParameter("batchno", order.getBatchno()).executeUpdate();
		List<Object[]> orders = getSession().createQuery(hql)
				.setParameter("batchno", order.getBatchno()).list();
		for (int i = 0; i < orders.size(); i++) {
			List<Object[]> list = getSession().createQuery(sql1)
					.setParameter("cid", orders.get(i)[0]).list();
			getSession()
					.createQuery(hql1)
					.setParameter(
							"stock",
							Integer.parseInt(list.get(0)[0].toString())
									- Integer.parseInt(orders.get(i)[1]
											.toString()))
					.setParameter(
							"record",
							Integer.parseInt(list.get(0)[1].toString())
									+ Integer.parseInt(orders.get(i)[1]
											.toString()))
					.setParameter("cid", orders.get(i)[0]).executeUpdate();
		}
		List<Integer> obj = getSession().createQuery(sql3)
				.setParameter("uid", orders.get(0)[2]).list();
		if(obj.get(0)!=null){
			getSession()
			.createQuery(sql2)
			.setParameter(
					"integral",
					obj.get(0)+ (int) order.getBatchtotle())
			.setParameter("uid", orders.get(0)[2]).executeUpdate();
		}
		
	}

	public void delIntegral(int uid) {
		String sql="update User u set u.integral=0 where u.uid=:uid";
		getSession().createQuery(sql).setParameter("uid",uid).executeUpdate();
		
	}

	public List<Orders> getOrders(int uid) {
		String sql = "select c.cid,c.cname,c.price,c.discount,c.faddr,c.pictureFileName,o.oid,o.CTOTAL,o.CNUM,o.batchno,o.uid,u.integral,c.cdesc, o.cprice,c.stock,o.status "
				+ "from Orders o ,Commodity c,User u where o.uid=:uid and o.uid=u.uid and o.cid=c.cid order by o.oid desc";
		
		List<Object[]> list = getSession().createSQLQuery(sql)
				.setParameter("uid", uid).list();
		List<Orders> orders = new ArrayList<Orders>();
		for (int i = 0; i < list.size(); i++) {
			Orders order = new Orders();
			Commodity commodity = new Commodity();
			User user = new User();
			commodity.setCid((int) list.get(i)[0]);
			commodity.setCname((String) list.get(i)[1]);
			commodity.setPrice((double) list.get(i)[2]);
			commodity.setDiscount((double) list.get(i)[3]);
			commodity.setFaddr((String) list.get(i)[4]);
			commodity.setPictureFileName((String) list.get(i)[5]);
			order.setOid((int) list.get(i)[6]);
			order.setCtotal((double) list.get(i)[7]);
			order.setCnum((int) list.get(i)[8]);
			order.setBatchno((String) list.get(i)[9]);
			user.setUid((int) list.get(i)[10]);
			user.setIntegral((int) list.get(i)[11]);
			commodity.setCdesc((String) list.get(i)[12]);
			order.setCprice((double) list.get(i)[13]);
			commodity.setStock((int) list.get(i)[14]);
			order.setStatus((int) list.get(i)[15]);
			order.setCname((String) list.get(i)[1]);
			order.setCommodity(commodity);
			order.setUser(user);
			orders.add(order);
			//totle += order.getCtotal();
			//order.setBatchtotle(totle);
		}
		return orders;
	}

	public int delOrder(int oid) {
		// TODO Auto-generated method stub
		String sql="delete Orders o where o.oid=:oid";
		return getSession().createQuery(sql).setParameter("oid", oid).executeUpdate();
	}
}
