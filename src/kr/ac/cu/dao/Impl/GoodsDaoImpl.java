package kr.ac.cu.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.GoodsDao;
import kr.ac.cu.vo.GoodsVO;

@Repository("GoodsDao")
public class GoodsDaoImpl implements GoodsDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertgoods(GoodsVO goods) throws RuntimeException {
		
		return sqlSession.insert("kr.ac.cu.goods.insertgoods",goods);
	}

	@Override
	public int updategoods(GoodsVO goods) throws RuntimeException {
		
		return sqlSession.update("kr.ac.cu.goods.updategoods",goods);
	}

	@Override
	public int deletegoods(int gnum) throws RuntimeException {
		return sqlSession.delete("kr.ac.cu.goods.deletegoods",gnum);
	}

	@Override
	public GoodsVO selectGoods(int gnum) throws RuntimeException {
		return (GoodsVO)sqlSession.selectOne("kr.ac.cu.goods.selectgoods",gnum);
	}

	@Override
	public GoodsVO selectGoods2(GoodsVO vo) throws RuntimeException {
		return (GoodsVO)sqlSession.selectOne("kr.ac.cu.goods.selectgoods2",vo);
	}

	@Override
	public List<GoodsVO> getGoodsList() throws RuntimeException{
		return sqlSession.selectList("kr.ac.cu.goods.selectgoods" );
	}

	@Override
	public List<GoodsVO> goodsList(int snum) throws RuntimeException {
		return sqlSession.selectList("kr.ac.cu.goods.goodslist", snum);
	}

	@Override
	public boolean checkGoods(GoodsVO vo) throws RuntimeException {
		if(null == sqlSession.selectOne("kr.ac.cu.goods.checkgoods", vo)) {
			return true;
		}
		else
			return false;
	}

	
	
}
