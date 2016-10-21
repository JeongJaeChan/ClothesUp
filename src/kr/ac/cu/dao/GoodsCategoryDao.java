package kr.ac.cu.dao;

import java.util.List;

import kr.ac.cu.vo.GoodsCategoryVO;
import kr.ac.cu.vo.GoodsVO;

public interface GoodsCategoryDao {
	public int insertgoodsCategory(GoodsCategoryVO goodsCategory) throws RuntimeException;
	public int updategoodsCategory(GoodsCategoryVO goodsCategory) throws RuntimeException;
	public int deletegoodsCategory(int gcnum) throws RuntimeException;
	public GoodsCategoryVO selectgoodsCategory(String gccategory) throws RuntimeException;
	public List<GoodsCategoryVO> getGoodsCategoryList( ) ;

}
