package kr.ac.cu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.cu.service.GoodsService;

import kr.ac.cu.vo.GoodsVO;

@Controller
public class goodsController {
	@Autowired
	private GoodsService goodsService;

	@RequestMapping("addGoodsForm")
	public String insertgoodsform(Model model, @RequestParam("snum") int snum, HttpSession session) {
		session.setAttribute("snum", snum);
		return "addGoodsForm";
	}

	@RequestMapping("insertgoods")
	public String insertgoods(@ModelAttribute GoodsVO vo, HttpSession session, Model model) {

		boolean check = goodsService.checkGoods(vo);

		if (check) {
			goodsService.insertgoods(vo);
			GoodsVO goods = goodsService.selectGoods2(vo);
			session.setAttribute("gnum", goods.getGnum());
			return "redirect:addGoodsInfoForm?gnum=" + goods.getGnum();
		} else {
			return "no2";
		}
	}

	@RequestMapping("deletegoods")
	public String deletegoods(@RequestParam("gnum") int gnum, HttpSession session) {
		goodsService.deletegoods(gnum);
		
		
		return "redirect:myShopInfo?snum=" + session.getAttribute("snum");
	}

	@RequestMapping("updategoods")
	public String updategoods(@RequestParam("gnum") int gnum, @ModelAttribute GoodsVO vo, HttpSession session) {
		System.out.println("VO : " + vo.toString());
		goodsService.updategoods(vo);
		return "close";
	}

	@RequestMapping("updategoodsform")
	public String updategoodsform() {
		return "updategoodsform";
	}
}
