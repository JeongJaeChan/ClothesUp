
package kr.ac.cu.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.cu.service.GoodsCategoryService;
import kr.ac.cu.vo.GoodsCategoryVO;

@Controller
public class GoodsCategoryController {
	@Autowired
	private GoodsCategoryService goodsCategoryService;
	
	@RequestMapping("goodsCategory")
	public String goodsCategory(Model model,HttpServletRequest request){

		model.addAttribute("goodsCategoryList", goodsCategoryService.getGoodsCategoryListService());
		
		return "goodsCategory";
	}
	
	
	@RequestMapping("insertgoodsCategoryform")
	public String insertgoodsCategoryform(){
		return "insertgoodsCategoryform";
	}
	
	@RequestMapping("insertgoodsCategory")
	public String insertgoodsCategory(@RequestParam("gcnum")int gcnum,@RequestParam("gccategory")String gccategory){
		GoodsCategoryVO goodsCategory=new GoodsCategoryVO();
		goodsCategory.setGcnum(gcnum);
		goodsCategory.setGccategory(gccategory);
		System.out.println(goodsCategory);
		goodsCategoryService.insertgoodsCategory(goodsCategory);
		return "redirect:/goodsCategory";
	}
	@RequestMapping("addgc")
	   public String join(GoodsCategoryVO vo){
	      //request로부터 값을 꺼내서 사용함...
	      System.out.println(vo);
	      //회원가입하는 서비스의 메서드를 호출함...
	      int count = goodsCategoryService.insertgoodsCategory(vo);
	      
	      if(count==1){
	         return "redirect:/goodsCategory";
	      }
	      else{
	         return "redirect:/insertgoodsCategoryform";
	      }
	   }
	
	@RequestMapping("deletegoodsCategory")
	public String deletegoodsCategory(@RequestParam("gcnum")int gcnum){	
		goodsCategoryService.deletegoodsCategory(gcnum);
		return "redirect:/goodsCategory";
	}
	
	@RequestMapping("updategoodsCategory")
	public String updategoodsCategory(@RequestParam("gcnum")int gcnum, @RequestParam("gccategory")String gccategory){
		GoodsCategoryVO goodsCategory=new GoodsCategoryVO();
		goodsCategory.setGcnum(gcnum);
		goodsCategory.setGccategory(gccategory);
		goodsCategoryService.updategoodsCategory(goodsCategory);
		return "redirect:/goodsCategory";
	}
	@RequestMapping("updategoodsCategoryform")
	public String updategoodsCategoryform(){
		return "updategoodsCategoryform";
	}
}