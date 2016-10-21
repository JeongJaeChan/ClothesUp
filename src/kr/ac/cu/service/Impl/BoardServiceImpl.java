package kr.ac.cu.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.cu.dao.BoardDAO;
import kr.ac.cu.dao.ShopDAO;
import kr.ac.cu.service.BoardService;
import kr.ac.cu.vo.BoardVO;
import kr.ac.cu.service.ShopService;
import kr.ac.cu.vo.ShopVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;
	
	@Autowired
	private ShopDAO shopDAO;
	
	public int addBoard(BoardVO board){
		int flag = boardDAO.addBoard(board);
		double average = boardDAO.averagescore(board.getSnum());
		shopDAO.updatescore(average, board.getSnum());
		return flag;
	}
	
	public int updateBoard(BoardVO board){
		int flag = boardDAO.updateBoard(board);
		double average = boardDAO.averagescore(board.getSnum());
		shopDAO.updatescore(average, board.getSnum());
		return flag;
	}
	
	public int deleteBoard(BoardVO board){
		int flag = boardDAO.deleteBoard(board.getBoardnum());
		
		double average = boardDAO.averagescore(board.getSnum());
		
		shopDAO.updatescore(average, board.getSnum());
		return flag;
	}
	
	public BoardVO selectBoard(int boardnum){
		return boardDAO.selectBoard(boardnum);
	}
	
	public List<BoardVO> boardlist(int snum){
		return boardDAO.boardlist(snum);
	}
	
	public double averagescore(int snum){
		return boardDAO.averagescore(snum);
	}
	public int shop_countBoard(int snum){
		return boardDAO.shop_countBoard(snum);
	}
	public int countBoard(){
		return boardDAO.countBoard();
	}

	@Override
	public int emptyBoard(int snum) {
		return boardDAO.emptyBoard(snum);
	}
}
