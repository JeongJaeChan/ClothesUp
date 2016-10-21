package kr.ac.cu.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.FavoriteDAO;
import kr.ac.cu.vo.FavoriteVO;

@Repository("FavoriteDAO")
public class FavoriteDAOImpl implements FavoriteDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<FavoriteVO> listFavorite(FavoriteVO favorite) throws RuntimeException {
		return sqlSession.selectList("kr.ac.cu.Favorite.listFavorite", favorite);
	}

	@Override
	public int deleteFavorite(int favoritenum) throws RuntimeException {
		return sqlSession.delete("kr.ac.cu.Favorite.deleteFavorite", favoritenum);
	}

	@Override
	public int addFavorite(FavoriteVO favorite) throws RuntimeException {
		return sqlSession.insert("kr.ac.cu.Favorite.addFavorite", favorite);
	} 

	@Override
	public int updateFavorite(FavoriteVO favorite) throws RuntimeException {
		return sqlSession.update("kr.ac.cu.Favorite.updateFavorite", favorite);
	}

	@Override
	public boolean selectFavorite(FavoriteVO favorite) throws RuntimeException {
		if(null == sqlSession.selectOne("kr.ac.cu.Favorite.selectFavorite", favorite)) {
			return true;
		}
		else
			return false;
	}

}
