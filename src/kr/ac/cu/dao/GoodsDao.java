package kr.ac.cu.dao;

import java.util.List;

import kr.ac.cu.vo.GoodsVO;
import kr.ac.cu.vo.ShopVO;


public interface GoodsDao {
	public int insertgoods(GoodsVO goods) throws RuntimeException;
	public int updategoods(GoodsVO goods) throws RuntimeException;
	public int deletegoods(int gnum) throws RuntimeException;
	public GoodsVO selectGoods (int gnum) throws RuntimeException;
	public GoodsVO selectGoods2 (GoodsVO vo) throws RuntimeException;
	public boolean checkGoods (GoodsVO vo) throws RuntimeException;
	public List<GoodsVO> goodsList(int snum) throws RuntimeException;
	public List<GoodsVO> getGoodsList( ) ;
}