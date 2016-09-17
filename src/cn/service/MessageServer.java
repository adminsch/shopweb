package cn.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dao.MessageDao;
import cn.model.Message;

@Service
public class MessageServer {

	@Resource
	private MessageDao messageDao;

	public void addPj(Message message) {
		// TODO Auto-generated method stub
		messageDao.addPj(message);
	}

	public List<Message> getMsg(int uid) {
		// TODO Auto-generated method stub
		return messageDao.getMsg(uid);
	}
	
}
