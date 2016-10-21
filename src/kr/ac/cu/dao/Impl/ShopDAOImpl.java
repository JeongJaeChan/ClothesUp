package kr.ac.cu.dao.Impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.ShopDAO;
import kr.ac.cu.vo.ShopVO;

@Repository("shopDAO")
public class ShopDAOImpl implements ShopDAO{
	@Autowired
	private SqlSession sqlSession;
	
	public int addShop(ShopVO shop) throws RuntimeException{
		return sqlSession.insert("kr.ac.cu.Shop.addShop", shop);
	}
		
	public int updateShop(ShopVO shop) throws RuntimeException{
		return sqlSession.update("kr.ac.cu.Shop.updateShop", shop);
	}
	
	@Override
	public int updateShopLike(ShopVO shop) throws RuntimeException {
		return sqlSession.update("kr.ac.cu.Shop.updateShopLike", shop);
	}

	/*public int deleteShop(int snum) throws RuntimeException{
		return sqlSession.delete("kr.ac.cu.Shop.deleteShop", snum);
	}*/
	
	public ShopVO selectShop(int snum) throws RuntimeException{
		return (ShopVO)sqlSession.selectOne("kr.ac.cu.Shop.selectShop", snum);
	}
	
	public List<ShopVO> shoplist() throws RuntimeException{
		return sqlSession.selectList("kr.ac.cu.Shop.shoplist");
	}
	
	public List<ShopVO> nameSearch(String sname) throws RuntimeException{
		return sqlSession.selectList("kr.ac.cu.Shop.nameSearch", sname);
	}
	
	public List<ShopVO> categorySearch(String scategory) throws RuntimeException{
		return sqlSession.selectList("kr.ac.cu.Shop.categorySearch", scategory);
	}
	
	public int countShop() throws RuntimeException{
		return sqlSession.selectOne("kr.ac.cu.Shop.countShop");
	}
	public List<ShopVO> pagingShop(ShopVO shopvo) throws RuntimeException{
		/*HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", pagevo);*/
				
		return sqlSession.selectList("kr.ac.cu.Shop.pagingShop", shopvo);
	}
	
	public int snum_update(int snum, String sname) throws RuntimeException{
		ShopVO shopvo = new ShopVO();
		shopvo.setSnum(snum);
		shopvo.setSname(sname);

		return sqlSession.update("kr.ac.cu.Shop.snum_update", shopvo); 
	}
	
	
	public int search_snum(String sname) throws RuntimeException{
		return sqlSession.selectOne("kr.ac.cu.Shop.search_snum", sname);
	}
	
	public String search_sname(int snum) throws RuntimeException{
		return sqlSession.selectOne("kr.ac.cu.Shop.search_sname", snum);
	}
	
	
	public List<ShopVO> selectCategoryShop(int scategory) throws RuntimeException{
		return sqlSession.selectList("kr.ac.cu.Shop.selectCategoryShop", scategory);
	}
	public List<ShopVO> selectnameShop(String sname) throws RuntimeException{
		return sqlSession.selectList("kr.ac.cu.Shop.selectnameShop", sname);
	}
	
	public int m_countShop(int pg) throws RuntimeException{
		return sqlSession.selectOne("kr.ac.cu.Shop.m_countShop", pg);
	}
	public int updatescore(double average, int snum) throws RuntimeException{
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("score", average);
		map.put("snum", snum);
		return sqlSession.update("kr.ac.cu.Shop.updatescore", map); 
	}
	public int emptyShop(int snum) throws RuntimeException{
		return sqlSession.update("kr.ac.cu.Shop.emptyShop", snum);
	}
	
	public int updateShopHits(ShopVO shop) throws RuntimeException {
		return sqlSession.update("kr.ac.cu.Shop.updateShopHits", shop);
	}
	
	public List<ShopVO> myshoplist(ShopVO shop) throws RuntimeException {
		return sqlSession.selectList("kr.ac.cu.Shop.myshoplist", shop);
	}
	@Override
	public ShopVO selectShop2(ShopVO shop) throws RuntimeException {
		
		return sqlSession.selectOne("kr.ac.cu.Shop.selectShop2", shop);
	}
}
