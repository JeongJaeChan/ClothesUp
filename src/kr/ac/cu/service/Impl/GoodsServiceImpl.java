package kr.ac.cu.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.cu.dao.GoodsDao;
import kr.ac.cu.service.GoodsService;
import kr.ac.cu.vo.GoodsVO;


@Service("GoodsService")
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsDao GoodsDao;
	
	@Override
	public int insertgoods(GoodsVO goods) {
		return GoodsDao.insertgoods(goods);
	}

	@Override
	public int deletegoods(int gnum) {
		return GoodsDao.deletegoods(gnum);
	}

	@Override
	public int updategoods(GoodsVO goods) {
		return GoodsDao.updategoods(goods);
	}

	@Override
	public GoodsVO selectGoods(int gnum) {
		return GoodsDao.selectGoods(gnum);
	}

	@Override
	public GoodsVO selectGoods2(GoodsVO vo) {
		return GoodsDao.selectGoods2(vo);
	}

	@Override
	public List<GoodsVO> getGoodsListService() {
		return GoodsDao.getGoodsList();
	}

	@Override
	public List<GoodsVO> goodsList(int snum) {
		return GoodsDao.goodsList(snum);
	}

	@Override
	public boolean checkGoods(GoodsVO vo) {
		boolean check = GoodsDao.checkGoods(vo);
		return check;
	}
	
}
