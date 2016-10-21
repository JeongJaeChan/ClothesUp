package kr.ac.cu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.cu.service.FavoriteService;
import kr.ac.cu.service.ShopService;
import kr.ac.cu.vo.FavoriteVO;
import kr.ac.cu.vo.ShopVO;

@Controller
public class FavoriteController {
	@Autowired
	private FavoriteService favoriteService;
	
	@Autowired
	private ShopService shopService;
	
	@RequestMapping("favoriteJoinForm")
	public String joinForm() {
		return "favoriteJoinForm";
	}

	@RequestMapping("favoriteJoin")
	public String join(@ModelAttribute ShopVO svo, @ModelAttribute FavoriteVO vo, HttpSession session) {
		boolean check = favoriteService.selectFavorite(vo);
		if (check) {
			favoriteService.addFavorite(vo);
			shopService.updateShopLike(svo);
			return "redirect:favorite?fid="+vo.getFid();
		} else {
			return "no";
		}
	}

	@RequestMapping("favoriteUpdateForm")
	public String updateForm() {
		return "favoriteUpdateForm";
	}

	@RequestMapping("favoriteUpdate")
	public String update(FavoriteVO vo) {
		favoriteService.updateFavorite(vo);
		return "redirect:favorite";
	}

	@RequestMapping("favoriteDelete")
	public String delete(@RequestParam("favoritenum") int favoritenum, @ModelAttribute FavoriteVO vo, HttpSession session) {
		System.out.println(vo);
		
		favoriteService.deleteFavorite(favoritenum);
		return "redirect:favorite?fid="+vo.getFid();
	}
	
	@RequestMapping("favorite")
	public String favoriteList(@ModelAttribute FavoriteVO vo, Model model, HttpSession session) {
		List<FavoriteVO> favoriteList = favoriteService.favoriteList(vo);
		model.addAttribute("favoriteList", favoriteList);
		model.addAttribute("shopList", shopService.shoplist());
		System.out.println("¼¼¼Ç : " + session.getAttribute("loginEmail"));
		
		if(session.getAttribute("loginEmail") == null)
			return "noLogin.jsp";
		else 
			return "favoritelist";
		}
}
