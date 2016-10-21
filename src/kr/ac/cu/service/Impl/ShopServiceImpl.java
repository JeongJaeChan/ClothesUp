package kr.ac.cu.service.Impl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.cu.dao.ShopDAO;
import kr.ac.cu.service.FaqService;
import kr.ac.cu.service.ShopService;
import kr.ac.cu.vo.ShopVO;

@Service("shopService")
public class ShopServiceImpl implements ShopService{
	@Autowired
	private ShopDAO shopDAO;
	
	public int addShop(ShopVO shop){
		int count = shopDAO.countShop();
		shop.setSnum(count+1);
		return shopDAO.addShop(shop);
	}
	
	public int updateShop(ShopVO shop){
		return shopDAO.updateShop(shop);
	}

	public int updateShopLike(ShopVO shop) {
		return shopDAO.updateShopLike(shop);
	}
	
	public ShopVO selectShop(int snum){
		return shopDAO.selectShop(snum);
	}
	
	public List<ShopVO> shoplist(){
		return shopDAO.shoplist();
	}
	
	public List<ShopVO> nameSearch(String sname){
		return shopDAO.nameSearch(sname);
	}
	
	public List<ShopVO> categorySearch(String scategory){
		return shopDAO.categorySearch(scategory);
	}
	
	public int countShop(){
		return shopDAO.countShop();
	}
	
	public int m_countShop(int pg){
		return shopDAO.m_countShop(pg);
	}
	
	public List<ShopVO> pagingShop(ShopVO shopvo){
		return shopDAO.pagingShop(shopvo);
	}
	
	public List<ShopVO> selectCategoryShop(int scategory){
		return shopDAO.selectCategoryShop(scategory);
	}
	public List<ShopVO> selectnameShop(String sname){
		return shopDAO.selectnameShop(sname);
	}
	
	public int updatescore(double average, int snum){
		return shopDAO.updatescore(average, snum);
	}
	
	public int emptyShop(int snum){
		return shopDAO.emptyShop(snum);
	}
	
	public int updateShopHits(ShopVO shop) {
		return shopDAO.updateShopHits(shop);
	}
	
	public List<ShopVO> myshoplist(ShopVO shop) {
		return shopDAO.myshoplist(shop);
	}
	
	   public String fileUpload(ShopVO vo, HttpServletRequest req) {
	      String path = req.getRealPath("resources/upload");
	      
	       String upPath = path + "\\" + vo.getUfile().getOriginalFilename();
	       File f = new File(upPath);
	 
	         try {
	            vo.getUfile().transferTo(f);
	         } catch (IllegalStateException | IOException e) {
	            e.printStackTrace();
	         }
	         vo.setSimage(vo.getUfile().getOriginalFilename());
	         System.out.println(vo.getUfile().toString());
	         return vo.getSimage();
	      
	   }
	   @Override
		public ShopVO selectShop2(ShopVO shop) throws RuntimeException {
			return shopDAO.selectShop2(shop);
		}
}
