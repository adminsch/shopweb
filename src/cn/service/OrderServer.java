package cn.service;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dao.OrderDao;
import cn.model.Orders;

@Service
public class OrderServer {
	@Resource
	private OrderDao orderDao;

	public void addOrder(Orders order) {
		order.setCtotal(order.getCprice() * order.getCnum());
		orderDao.addOrder(order);
	}

	public Orders getOrders(String batchno) {
		return orderDao.getOrders(batchno);
	}

	public void pay(Orders order) {

	}

	public void update(Orders order) {
		orderDao.update(order);

	}

	public String addGw(Orders order) {
		order.setCtotal(order.getCprice() * order.getCnum());
		order.setIsgw(1);
		orderDao.addOrder(order);
		return null;
	}

	public List<Orders> getGw(Orders order) {
		return orderDao.getGw(order);

	}

	public void updateGw(Orders order) {
		order.setCtotal(order.getCnum()*order.getCprice());
		orderDao.updateGw(order);
	}

	public void delShop(Orders order) {
		orderDao.delShop(order);
		
	}

	public void payGw(Orders order) {
		// TODO Auto-generated method stub
		orderDao.payGw(order);
	}

	public void delIntegral(int uid) {
		// TODO Auto-generated method stub
		orderDao.delIntegral(uid);
	}
	
	public List<Orders> getOrders(int uid){
		return orderDao.getOrders(uid);
	}

	public int delOrder(int oid) {
		// TODO Auto-generated method stub
		return orderDao.delOrder(oid);
	}
}
