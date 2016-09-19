package cn.service;

import java.security.MessageDigest;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.UserDao;
import cn.model.Commodity;
import cn.model.User;

@Service
public class UserService {
	@Resource
	private UserDao userDao;

	public void registService(User user) {
		user.setPassword(encrypt(user.getPassword()));
		user.setDate(new Date());
		userDao.registDao(user);
	}
	
	public User loginService(User user) {
		user.setPassword(encrypt(user.getPassword()));
		return userDao.loginDao(user);
	}

	public List<User> getUsers() {
		return userDao.getUsers();
	}
	
	public int delUser(User user) {
		return userDao.delUser(user);
		
	}
	public User getUser(int uid){
		return userDao.getUser(uid);
	}
	public void editUser(User user){
		if(user.getPassword()!=null&&!user.getPassword().isEmpty()){
			user.setPassword(encrypt(user.getPassword()));
		}
		userDao.editUser(user);
	}
	
	// 查看用户是否已注册
	public int checkUsername(String name) {
		return userDao.checkUsername(name);
	}
	

	
	  public static String encrypt(String inStr){  
	        MessageDigest md5 = null;  
	        try{  
	            md5 = MessageDigest.getInstance("MD5");  
	        }catch (Exception e){  
	            System.out.println(e.toString());  
	            e.printStackTrace();  
	            return "";  
	        }  
	        char[] charArray = inStr.toCharArray();  
	        byte[] byteArray = new byte[charArray.length];  
	  
	        for (int i = 0; i < charArray.length; i++)  
	            byteArray[i] = (byte) charArray[i];  
	        byte[] md5Bytes = md5.digest(byteArray);  
	        StringBuffer hexValue = new StringBuffer();  
	        for (int i = 0; i < md5Bytes.length; i++){  
	            int val = ((int) md5Bytes[i]) & 0xff;  
	            if (val < 16)  
	                hexValue.append("0");  
	            hexValue.append(Integer.toHexString(val));  
	        }  
	        return hexValue.toString();  
	  
	    }  
}
