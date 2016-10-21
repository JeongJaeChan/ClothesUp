package kr.ac.cu.service;

import java.util.List;

import kr.ac.cu.vo.GoodsInfoVO;

public interface GoodsInfoService {
	public int insertgoodsInfoService(GoodsInfoVO goods) throws RuntimeException;
	public int updategoodsInfoService(GoodsInfoVO goods) throws RuntimeException;
	public int deletegoodsInfoService(int gnum) throws RuntimeException;
	public GoodsInfoVO selectGoodsInfoService (int gnum) throws RuntimeException;
	public List<GoodsInfoVO> getGoodsInfoServiceList( ) ;
}
 