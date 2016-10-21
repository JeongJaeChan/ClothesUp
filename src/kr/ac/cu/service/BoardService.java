package kr.ac.cu.service;

import java.util.List;

import kr.ac.cu.vo.BoardVO;

public interface BoardService {
	public int addBoard(BoardVO board);
	public int updateBoard(BoardVO board);
	public int deleteBoard(BoardVO board);
	public BoardVO selectBoard(int boardnum);
	public List<BoardVO> boardlist(int snum);
	public double averagescore(int snum);
	public int shop_countBoard(int snum);
	public int countBoard();
	public int emptyBoard(int snum);
}
