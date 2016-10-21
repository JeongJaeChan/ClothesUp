package kr.ac.cu.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.BoardDAO;
import kr.ac.cu.vo.BoardVO;

@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO{
	@Autowired
	private SqlSession sqlSession;
	
	public int addBoard(BoardVO board) throws RuntimeException{
		return sqlSession.insert("kr.ac.cu.Board.addBoard", board);
	}
		
	public int updateBoard(BoardVO board) throws RuntimeException{
		return sqlSession.update("kr.ac.cu.Board.updateBoard", board);
	}
	
	public int deleteBoard(int boardnum) throws RuntimeException{
	
		return sqlSession.delete("kr.ac.cu.Board.deleteBoard", boardnum);
	}
	
	public BoardVO selectBoard(int boardnum) throws RuntimeException{
		return (BoardVO)sqlSession.selectOne("kr.ac.cu.Board.selectBoard", boardnum);
	}
	
	public List<BoardVO> boardlist(int snum) throws RuntimeException{
		return sqlSession.selectList("kr.ac.cu.Board.boardlist", snum);
	}
	public double averagescore(int snum) throws RuntimeException{
		double score;
		int scorecount =sqlSession.selectOne("kr.ac.cu.Board.shop_countBoard",snum);
		if(scorecount==0){
			score= 0.00;
		}else{
		 score = sqlSession.selectOne("kr.ac.cu.Board.averagescore", snum);
		if(score != 0.00)
		return score;
		}
	return 0.00;
		
	}

	public int shop_countBoard(int snum)throws RuntimeException{
		return sqlSession.selectOne("kr.ac.cu.Board.shop_countBoard", snum);
	}
	public int countBoard()throws RuntimeException{
		return sqlSession.selectOne("kr.ac.cu.Board.countBoard");
	}
	public int emptyBoard(int snum)throws RuntimeException{
		return sqlSession.delete("kr.ac.cu.Board.emptyBoard", snum);
	}
}
