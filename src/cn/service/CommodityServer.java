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
import cn.model.Commodity;
import cn.model.Message;
@Service
public class CommodityServer{
	@Resource
	private CommodityDao commodityDao;
	
	public List<Commodity> getCommoditys(String searchtext){
		return commodityDao.getCommoditys(searchtext);
	}
	
	public int delCommodity(Commodity commodity) {
		return commodityDao.delCommodity(commodity);
		
	}
	
	public void addCommodity(Commodity commodity){
		String str=ServletActionContext.getServletContext().getRealPath("WEB-INF");
		File file=new File(str);
		str=file.getParentFile().getParent();
		file=new File(str+File.separator+"upload");
		if(!file.exists()){
			file.mkdirs();
		}
		String filename=new Date().getTime()+commodity.getPictureFileName();//数据库文件名
		commodity.setPictureFileName("upload/"+filename);
		FileInputStream in=null;
		FileOutputStream out=null;
		try {
			 in=new FileInputStream(commodity.getPicture());
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
		commodity.setCdate(new Date());
		commodityDao.addCommodity(commodity);
	}
	
	public Commodity getCommodity(Commodity commodity) {
		return commodityDao.getCommodity(commodity);
	}

	public List<Message> getMessage(Commodity commodity) {
		// TODO Auto-generated method stub
		return commodityDao.getMessage(commodity);
	}

	public List<Commodity> getHot() {
		// TODO Auto-generated method stub
		return commodityDao.getHot();
	}
	
}
