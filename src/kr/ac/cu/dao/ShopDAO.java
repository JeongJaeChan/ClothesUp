package kr.ac.cu.dao;

import java.util.ArrayList;
import java.util.List;

import kr.ac.cu.vo.ShopVO;

public interface ShopDAO {
	public int addShop(ShopVO shop) throws RuntimeException;
	public int updateShop(ShopVO shop) throws RuntimeException;
	public int updateShopLike(ShopVO shop) throws RuntimeException;
	
	
	/*public int deleteShop(int snum) throws RuntimeException;*/
	
	
	public ShopVO selectShop(int snum) throws RuntimeException;
	public List<ShopVO> shoplist() throws RuntimeException;
	public List<ShopVO> nameSearch(String sname) throws RuntimeException;
	public List<ShopVO> categorySearch(String scategory) throws RuntimeException;
	public int countShop() throws RuntimeException;
	public List<ShopVO> pagingShop(ShopVO shopvo) throws RuntimeException;
	
	public int snum_update(int snum, String sname) throws RuntimeException;
	public int search_snum(String sname) throws RuntimeException;
	public String search_sname(int snum) throws RuntimeException;
	
	
	public List<ShopVO> selectCategoryShop(int scategory) throws RuntimeException;
	public List<ShopVO> selectnameShop(String sname) throws RuntimeException;
	public int m_countShop(int pg)throws RuntimeException;
	public int updatescore(double average, int snum) throws RuntimeException;
	public int emptyShop(int snum) throws RuntimeException;
	
	public int updateShopHits(ShopVO shop) throws RuntimeException;
	public List<ShopVO> myshoplist(ShopVO shop) throws RuntimeException;

	public ShopVO selectShop2(ShopVO shop) throws RuntimeException;
	
}
