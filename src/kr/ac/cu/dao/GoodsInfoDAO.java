package kr.ac.cu.dao;

import java.util.List;

import kr.ac.cu.vo.GoodsInfoVO;


public interface GoodsInfoDAO {
	public int insertgoodsInfo(GoodsInfoVO goods) throws RuntimeException;
	public int updategoodsInfo(GoodsInfoVO goods) throws RuntimeException;
	public int deletegoodsInfo(int gnum) throws RuntimeException;
	public GoodsInfoVO selectGoodsInfo (int gnum) throws RuntimeException;
	public List<GoodsInfoVO> getGoodsInfoList( ) ;
}
 