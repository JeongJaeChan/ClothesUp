package kr.ac.cu.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kr.ac.cu.vo.ShopVO;

public interface ShopService {
	public int addShop(ShopVO shop);
	public int updateShop(ShopVO shop);
	public int updateShopLike(ShopVO shop);
	/*public int deleteShop(int snum);*/
	public ShopVO selectShop(int snum);
	public List<ShopVO> shoplist();
	public List<ShopVO> nameSearch(String sname);
	public List<ShopVO> categorySearch(String scategory);
	public int countShop();
	public List<ShopVO> pagingShop(ShopVO shopvo);
	public List<ShopVO> selectCategoryShop(int scategory);
	public List<ShopVO> selectnameShop(String sname);
	public int m_countShop(int pg);
	public int updatescore(double average, int snum);
	public int emptyShop(int snum);
	public ShopVO selectShop2(ShopVO shop) throws RuntimeException;
	public int updateShopHits(ShopVO shop);
	public List<ShopVO> myshoplist(ShopVO shop);
	String fileUpload(ShopVO vo, HttpServletRequest req);
}
