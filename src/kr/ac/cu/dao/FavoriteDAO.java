package kr.ac.cu.dao;

import java.util.List;

import kr.ac.cu.vo.FavoriteVO;
import kr.ac.cu.vo.PersonVO;

public interface FavoriteDAO {
	public List<FavoriteVO> listFavorite(FavoriteVO favorite) throws RuntimeException;
	
	public int deleteFavorite(int favoritenum) throws RuntimeException;
	
	public int addFavorite(FavoriteVO favorite) throws RuntimeException;
	
	public int updateFavorite(FavoriteVO favorite) throws RuntimeException;
	
	public boolean selectFavorite(FavoriteVO favorite) throws RuntimeException;

}
  