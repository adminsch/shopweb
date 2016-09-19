package cn.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.springframework.stereotype.Service;

import cn.dao.CommodityDao;
import cn.dao.SecondHandDao;
import cn.model.Commodity;
import cn.model.Message;
import cn.model.SecondHand;
@Service
public class SecondHandService{
	@Resource
	private SecondHandDao secondHandDao;
	
	public List<SecondHand> getSecondHands(String searchtext){
		return secondHandDao.getSecondHands(searchtext);
	}
	
	public int delSecondHand(SecondHand secondHand) {
		return secondHandDao.delSecondHand(secondHand);
		
	}
	
	public void addSecondHand(SecondHand secondHand){
		String str=ServletActionContext.getServletContext().getRealPath("WEB-INF");
		File file=new File(str);
		str=file.getParentFile().getParent();
		file=new File(str+File.separator+"upload");
		if(!file.exists()){
			file.mkdirs();
		}
		String filename=new Date().getTime()+secondHand.getPictureFileName();//数据库文件名
		secondHand.setPictureFileName("upload/"+filename);
		FileInputStream in=null;
		FileOutputStream out=null;
		try {
			 in=new FileInputStream(secondHand.getPicture());
			 out=new FileOutputStream(file+File.separator+filename);
			int num=0;
			byte []b=new byte[1024];
			while((num=in.read(b))!=-1){
				out.write(b, 0, num);
			}
			out.flush();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(in!=null&&out!=null){
				try {
					in.close();
					out.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
		}
		secondHand.setCdate(new Date());
		secondHandDao.addSecondHand(secondHand);
	}
	
	public SecondHand getSecondHand(SecondHand secondHand) {
		return secondHandDao.getSecondHand(secondHand);
	}
	
}
