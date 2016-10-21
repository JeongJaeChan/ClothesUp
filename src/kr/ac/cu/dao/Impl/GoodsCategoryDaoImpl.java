package kr.ac.cu.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.GoodsCategoryDao;
import kr.ac.cu.vo.GoodsCategoryVO;


@Repository("GoodsCategoryDao")
public class GoodsCategoryDaoImpl implements GoodsCategoryDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertgoodsCategory(GoodsCategoryVO goodsCategory) throws RuntimeException {
		return sqlSession.insert("kr.ac.cu.goodsCategory.insertgoodsCategory",goodsCategory);
	}

	@Override
	public int updategoodsCategory(GoodsCategoryVO goodsCategory) throws RuntimeException {
		return sqlSession.update("kr.ac.cu.goodsCategory.updategoodsCategory",goodsCategory);
	}

	@Override
	public int deletegoodsCategory(int gcnum) throws RuntimeException {
		return sqlSession.delete("kr.ac.cu.goodsCategory.deletegoodsCategory",gcnum);
	}

	@Override
	public GoodsCategoryVO selectgoodsCategory(String gccategory) throws RuntimeException {
		return (GoodsCategoryVO)sqlSession.selectOne("kr.ac.cu.goodsCategory.selectgoodsCategory",gccategory);
	}

	@Override
	public List<GoodsCategoryVO> getGoodsCategoryList() {
		return sqlSession.selectList("kr.ac.cu.goodsCategory.selectgoodsCategory");
	}

}
