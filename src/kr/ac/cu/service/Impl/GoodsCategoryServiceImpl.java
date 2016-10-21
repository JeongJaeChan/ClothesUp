package kr.ac.cu.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.cu.dao.GoodsCategoryDao;
import kr.ac.cu.service.GoodsCategoryService;
import kr.ac.cu.vo.GoodsCategoryVO;

@Service("GoodsCategoryService")
public class GoodsCategoryServiceImpl implements GoodsCategoryService {
	@Autowired
	private GoodsCategoryDao GoodsCategoryDao;
	
	@Override
	public int insertgoodsCategory(GoodsCategoryVO goodsCategory) {
		return GoodsCategoryDao.insertgoodsCategory(goodsCategory);
	}

	@Override
	public int deletegoodsCategory(int gcnum) {
		return GoodsCategoryDao.deletegoodsCategory(gcnum);
	}

	@Override
	public int updategoodsCategory(GoodsCategoryVO goodsCategory) {
		return GoodsCategoryDao.updategoodsCategory(goodsCategory);
	}

	@Override
	public GoodsCategoryVO selectGoodsCategory(String gccategory) {
		return GoodsCategoryDao.selectgoodsCategory(gccategory);
	}

	@Override
	public List<GoodsCategoryVO> getGoodsCategoryListService() {
		return GoodsCategoryDao.getGoodsCategoryList();
	}

}
