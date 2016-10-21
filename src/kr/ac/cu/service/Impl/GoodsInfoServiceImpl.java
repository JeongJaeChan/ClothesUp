package kr.ac.cu.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.cu.dao.GoodsDao;
import kr.ac.cu.dao.GoodsInfoDAO;
import kr.ac.cu.service.GoodsInfoService;
import kr.ac.cu.vo.GoodsInfoVO;


@Service("GoodsInfoService")
public class GoodsInfoServiceImpl implements GoodsInfoService {
	@Autowired
	private GoodsInfoDAO GoodsInfoDao;
	
	
	
	@Override
	public int insertgoodsInfoService(GoodsInfoVO goods) throws RuntimeException {
		return GoodsInfoDao.insertgoodsInfo(goods);
	}

	@Override
	public int updategoodsInfoService(GoodsInfoVO goods) throws RuntimeException {
		return GoodsInfoDao.updategoodsInfo(goods);
	}
 
	@Override
	public int deletegoodsInfoService(int gnum) throws RuntimeException {
		return GoodsInfoDao.deletegoodsInfo(gnum);
	}

	@Override
	public GoodsInfoVO selectGoodsInfoService(int gnum) throws RuntimeException {
		return GoodsInfoDao.selectGoodsInfo(gnum);
	}

	@Override
	public List<GoodsInfoVO> getGoodsInfoServiceList() {
		return GoodsInfoDao.getGoodsInfoList();
	}

}
