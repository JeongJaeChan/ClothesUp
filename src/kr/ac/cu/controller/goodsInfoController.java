package kr.ac.cu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.cu.service.GoodsInfoService;
import kr.ac.cu.service.GoodsService;
import kr.ac.cu.service.ShopService;
import kr.ac.cu.vo.GoodsInfoVO;

@Controller
public class goodsInfoController {
		@Autowired
		private GoodsInfoService goodsInfoService;
		@Autowired
		private GoodsService goodsService;
		@Autowired
		private ShopService shopService;
		
		
		@RequestMapping("addGoodsInfoForm")
		public String addShopForm(Model model, @RequestParam("gnum") int gnum){
			
			model.addAttribute("goods", goodsService.selectGoods(gnum));
			return "addGoodsInfoForm";
		}
		
		@RequestMapping("insertgoodsInfo")
		public String insertgoods(@ModelAttribute GoodsInfoVO vo, Model model, HttpSession session){
			goodsInfoService.insertgoodsInfoService(vo);
			return "close";
		}
		
		@RequestMapping("goodsInfo")
		public String selectGoodsInfo(@ModelAttribute GoodsInfoVO vo, Model model, 
				@RequestParam("gnum") int gnum, HttpSession session, @RequestParam("snum") int snum) {
			model.addAttribute("goodsInfo", goodsInfoService.selectGoodsInfoService(gnum));
			model.addAttribute("shop", shopService.selectShop(snum));
			return "goodsInfo";
		}
		
}
