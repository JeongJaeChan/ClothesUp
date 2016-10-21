package kr.ac.cu.service;

import java.util.List;

import kr.ac.cu.vo.GoodsCategoryVO;


public interface GoodsCategoryService {

	public int insertgoodsCategory(GoodsCategoryVO goodsCategory);
	public int deletegoodsCategory(int gcnum);
	public int updategoodsCategory(GoodsCategoryVO goodsCategory);
	public GoodsCategoryVO selectGoodsCategory(String gccategory) ;
	public List<GoodsCategoryVO> getGoodsCategoryListService();
	
}