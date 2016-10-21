package kr.ac.cu.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.FavoriteDAO;
import kr.ac.cu.service.FavoriteService;
import kr.ac.cu.vo.FavoriteVO;

@Repository("FavoriteService")
public class FavoriteServiceImpl implements FavoriteService {
	@Autowired
	private FavoriteDAO FavoriteDao;

	@Override
	public List<FavoriteVO> favoriteList(FavoriteVO favorite) {
		return FavoriteDao.listFavorite(favorite);
	}

	@Override
	public int deleteFavorite(int favoritenum) {
		return FavoriteDao.deleteFavorite(favoritenum);
	}

	@Override
	public int updateFavorite(FavoriteVO favorite) {
		return FavoriteDao.updateFavorite(favorite);
	}

	@Override
	public int addFavorite(FavoriteVO favorite) {
		return FavoriteDao.addFavorite(favorite);
	}

	@Override
	public boolean selectFavorite(FavoriteVO favorite) {
		boolean check = FavoriteDao.selectFavorite(favorite);
		return check;
	}
}
