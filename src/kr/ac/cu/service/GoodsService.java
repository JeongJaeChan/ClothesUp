package kr.ac.cu.service;

import java.util.List;

import kr.ac.cu.vo.GoodsVO;

public interface GoodsService {
	//占십울옙占쏙옙 占쏙옙占� 占쏙옙占쏙옙
	//회占쏙옙占쏙옙占쏙옙
	public int insertgoods(GoodsVO goods);
	public int deletegoods(int gnum);
	public int updategoods(GoodsVO goods);
	public GoodsVO selectGoods(int gnum) ;
	public GoodsVO selectGoods2(GoodsVO vo);
	public boolean checkGoods(GoodsVO vo) ;
	public List<GoodsVO> getGoodsListService();	
	public List<GoodsVO> goodsList(int snum);	
}
