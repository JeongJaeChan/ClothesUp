package kr.ac.cu.service;

import java.util.List;

import kr.ac.cu.vo.FavoriteVO;

public interface FavoriteService {
	public List<FavoriteVO> favoriteList(FavoriteVO favorite);
	public int deleteFavorite(int favoritenum);
	public int updateFavorite(FavoriteVO favorite);
	public int addFavorite(FavoriteVO favorite);
	public boolean selectFavorite(FavoriteVO favorite);
}
 