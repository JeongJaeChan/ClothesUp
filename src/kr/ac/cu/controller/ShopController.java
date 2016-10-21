package kr.ac.cu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.cu.service.BoardService;
import kr.ac.cu.service.GoodsService;
import kr.ac.cu.service.ShopService;
import kr.ac.cu.vo.PersonVO;
import kr.ac.cu.vo.ShopVO;

@Controller
public class ShopController {
	
	@Autowired
	private ShopService shopService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private GoodsService goodsService;
	
	
	@RequestMapping("addShopForm")
	public String addShopForm(){
		return "addShopForm";
	}
	
	
	@RequestMapping("addShop")
	public String addShop(@ModelAttribute ShopVO shop, HttpServletRequest req, Model model){
		shopService.fileUpload(shop, req);
		//shopService.addShop(shop);
		System.out.println(shop.toString());
		ShopVO test = shopService.selectShop2(shop);
		String err="以묐났�맂 �쐞移섏엯�땲�떎.";
		String success="�벑濡앸릺�뿀�뒿�땲�떎.";
		String none="�뾾�뒗 �쐞移섏엯�땲�떎.";
		if(test==null){
			model.addAttribute("err",none);
			return "addShopForm";
		}else{
		

		if(test.getSname() == null || test.getSname() == ""){
			shopService.addShop(shop);
			model.addAttribute("success",success);
			shopService.fileUpload(shop, req);
			return "success";
		}
		else{
			model.addAttribute("err",err);
			return "addShopForm";
		}
		}
	}
	
	
	@RequestMapping("updateShopForm")
	public String updateShopForm(Model model, @RequestParam("snum") int snum){
		model.addAttribute("shopInfo", shopService.selectShop(snum));
		return "updateShopForm";
	}
	
	
	@RequestMapping("updateShop")
	public String updateShop(@RequestParam("snum") int snum, @RequestParam("sname") String sname, 
			@RequestParam("phone") String phone, @RequestParam("simage") String simage, 
			@RequestParam("scategory") String scategory, @RequestParam("intro") String intro){
		ShopVO shop = new ShopVO();
		shop.setSnum(snum);
		shop.setSname(sname);
		shop.setPhone(phone);
		shop.setSimage(simage);
		shop.setScategory(scategory);
		shop.setIntro(intro);
		
		shopService.updateShop(shop);
		
		return "redirect:/shoplist?pg=1";
	}
	
	/*@RequestMapping("updateShop")
	public String updateShop(@RequestParam("snum") int snum, @RequestParam("sname") String sname, 
			@RequestParam("phone") String phone, @RequestParam("simage") String simage, 
			@RequestParam("scategory") String scategory, @RequestParam("intro") String intro,
			@RequestParam("score") int score){
		ShopVO shop = new ShopVO();
		shop.setSnum(snum);
		shop.setSname(sname);
		shop.setPhone(phone);
		shop.setSimage(simage);
		shop.setScategory(scategory);
		shop.setIntro(intro);
		
		shopService.updateShop(shop);
		
		return "redirect:/shoplist?pg=1";
	}*/
	
	@RequestMapping("emptyShop")
	public String emptyShop(@RequestParam("snum") int snum){
		
		boardService.emptyBoard(snum);
		shopService.emptyShop(snum);
		return "redirect:/shoplist?pg=1";
	}

	
	@RequestMapping("searchShop")
	public String searchShop(Model model, @RequestParam("option") String option, 
			@RequestParam("search") String search){
		if("占싱몌옙".equals(option))
			model.addAttribute("shopList",shopService.nameSearch(search));
		else if("카占쌓곤옙".equals(option))
			model.addAttribute("shopList",shopService.categorySearch(search));
		
		return "shoplist";
	}
	
	
	
	
	@RequestMapping("shoplist")
	public String shoplist(Model model, @RequestParam("pg") int pg){
		int count = shopService.countShop();
		
		List<ShopVO> shopList = new ArrayList<>();
		
		if(count > 0){
			shopList = shopService.shoplist();
		} 
		else{ shopList = null; }
		
		
	
		model.addAttribute("pg", pg);
		model.addAttribute("shopList", shopList);
		model.addAttribute("count", count);
		

		
		
		return "shoplist";
	}
	
	@RequestMapping("shopInfo")
	public String shopInfo(@ModelAttribute ShopVO svo, Model model, @RequestParam("snum") int snum){
		model.addAttribute("shopInfo", shopService.selectShop(snum));
		model.addAttribute("boardList",boardService.boardlist(snum));
		model.addAttribute("goodsList", goodsService.goodsList(snum));
		shopService.updateShopHits(svo);
		return "shopInfo";
	}
	
	
	
	
	
	
	
	
	@RequestMapping("about")
	public String about(Model model){
		model.addAttribute("shopList",shopService.shoplist());
		model.addAttribute("a","active");
		model.addAttribute("b","");
		model.addAttribute("c","");
		model.addAttribute("oneservice","tab-pane fade active in");
		model.addAttribute("twoservice","tab-pane fade");
		model.addAttribute("threeservice","tab-pane fade");
		model.addAttribute("count",shopService.countShop());
		return "about";
	}
	
	
	
	
	@RequestMapping("selectCategoryShop")
	public String selectCategoryShop(Model model, @RequestParam("scategory") int scategory){
		model.addAttribute("shopList",shopService.shoplist());
		model.addAttribute("selectCategoryShop", shopService.selectCategoryShop(scategory));
		model.addAttribute("a","");
		model.addAttribute("b","active");
		model.addAttribute("c","");
		model.addAttribute("oneservice","tab-pane fade");
		model.addAttribute("twoservice","tab-pane fade active in");
		model.addAttribute("threeservice","tab-pane fade");
		model.addAttribute("scategory",scategory);
		return "about";
	}
	
	
	@RequestMapping("selectnameShop")
	public String selectnameShop(Model model, @RequestParam("sname") String sname){
		model.addAttribute("shopList",shopService.shoplist());
		model.addAttribute("selectnameShop", shopService.selectnameShop(sname));
		model.addAttribute("a","");
		model.addAttribute("b","");
		model.addAttribute("c","active");
		model.addAttribute("oneservice","tab-pane fade");
		model.addAttribute("twoservice","tab-pane fade");
		model.addAttribute("threeservice","tab-pane fade active in");
		
		return "about";
	}
	
	@RequestMapping("myShopList")
	public String myshoplist(@ModelAttribute ShopVO vo, Model model, HttpSession session) {
		model.addAttribute("shopList",shopService.myshoplist(vo));
		return "myShopList";
	}
	
	@RequestMapping("myShopInfo")
	public String MyShopInfo(@ModelAttribute ShopVO svo, Model model, @RequestParam("snum") int snum, HttpSession session){
		session.setAttribute("snum", snum);
		model.addAttribute("shopInfo", shopService.selectShop(snum));
		model.addAttribute("boardList",boardService.boardlist(snum));
		model.addAttribute("goodsList", goodsService.goodsList(snum));
		return "myShopInfo";
	}
	
}
