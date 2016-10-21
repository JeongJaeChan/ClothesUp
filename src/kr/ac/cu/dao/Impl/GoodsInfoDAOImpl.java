package kr.ac.cu.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.GoodsInfoDAO;
import kr.ac.cu.vo.GoodsInfoVO;
import kr.ac.cu.vo.GoodsVO;


@Repository("GoodsInfoDAO")
public class GoodsInfoDAOImpl implements GoodsInfoDAO {
	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public int insertgoodsInfo(GoodsInfoVO goodsInfo) throws RuntimeException {
		return sqlSession.insert("kr.ac.cu.goodsInfo.insertgoodsInfo",goodsInfo);
	}

	@Override
	public int updategoodsInfo(GoodsInfoVO goodsInfo) throws RuntimeException {
		return sqlSession.update("kr.ac.cu.goodsInfo.updategoodsInfo",goodsInfo);
	} 

	@Override
	public int deletegoodsInfo(int ginum) throws RuntimeException {
		return sqlSession.delete("kr.ac.cu.goodsInfo.deletegoodsInfo",ginum);
	}

	@Override
	public GoodsInfoVO selectGoodsInfo(int gnum) throws RuntimeException {
		return (GoodsInfoVO)sqlSession.selectOne("kr.ac.cu.goodsInfo.selectgoodsInfo",gnum);
	}

	@Override
	public List<GoodsInfoVO> getGoodsInfoList() {
		return sqlSession.selectList("kr.ac.cu.goodsInfo.selectgoodsInfo" );
	}

}
