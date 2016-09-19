package cn.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dao.AddressDao;
import cn.model.Address;

@Service
public class AddressServer {
	@Resource
	private AddressDao addressDao;
	public void addAddr(Address address){
		addressDao.addAddr(address);
	}
	
	public List<Address> getAddrs(){
		return addressDao.getAddrs();
	}
	public int delAddress(Address address) {
		return addressDao.delAddress(address);
	}
}
