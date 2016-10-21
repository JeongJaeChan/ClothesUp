package kr.ac.cu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.cu.service.BoardService;
import kr.ac.cu.vo.BoardVO;
import kr.ac.cu.vo.ShopVO;

@Controller
public class BoardController {
	 
	@Autowired
	private BoardService boardService;
	
	
	@RequestMapping("addBoardForm")
	public String addBoardForm(Model model, @RequestParam("snum") int snum){
		model.addAttribute("shopnum", snum);
		
		return "addBoardForm";
	}
	
	@RequestMapping("addBoard")
	public String addShop(@RequestParam("snum") int snum, @RequestParam("score") int score,
			@RequestParam("btitle") String btitle, @RequestParam("bcontent") String bcontent,
			@RequestParam("pid") String pid){
		BoardVO board = new BoardVO();
		//int count = boardService.countBoard();
		
		board.setSnum(snum);
		board.setScore(score);
		board.setBtitle(btitle);
		board.setBcontent(bcontent);
		board.setPid(pid);
		//board.setBoardnum(count+1);
		board.toString();
		boardService.addBoard(board);
		
		return "redirect:/shopInfo?snum="+snum;
		
	}
	
	@RequestMapping("updateBoardForm")
	public String updateBoardForm(Model model, @RequestParam("boardnum") int boardnum){
		model.addAttribute("boardInfo", boardService.selectBoard(boardnum));
		
		return "updateBoardForm";
	}
	
	
	@RequestMapping("updateBoard")
	public String updateBoard(@RequestParam("boardnum") int boardnum, @RequestParam("snum") int snum, 
			@RequestParam("score") int score, @RequestParam("btitle") String btitle, 
			@RequestParam("bcontent") String bcontent, @RequestParam("pid") String pid){
		
		BoardVO board = new BoardVO();
		board.setBoardnum(boardnum);
		board.setSnum(snum);
		board.setScore(score);
		board.setBtitle(btitle);
		board.setBcontent(bcontent);
		board.setPid(pid);
		
		boardService.updateBoard(board);
		
		return "redirect:/boardlist";
	}
	
	@RequestMapping("deleteBoard")
	public String deleteBoard(@RequestParam("boardnum") int boardnum, @RequestParam("snum") int snum){
		BoardVO board = new BoardVO();
		board.setBoardnum(boardnum);
		board.setSnum(snum);
		boardService.deleteBoard(board);
		
		return "redirect:/shopInfo?snum="+snum;
	}
	
	
	
	@RequestMapping("boardlist")
	public String boardlist(Model model, @RequestParam("snum") int snum){
		model.addAttribute("boardList",boardService.boardlist(snum));
		return "boardlist";
	}
	
	
	
	@RequestMapping("boardInfo")
	public String shopInfo(Model model, @RequestParam("boardnum") int boardnum){
		model.addAttribute("boardInfo", boardService.selectBoard(boardnum));
		
		return "boardInfo";
	}
}
