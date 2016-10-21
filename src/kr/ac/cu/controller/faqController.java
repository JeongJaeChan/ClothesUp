package kr.ac.cu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.cu.service.FaqService;
import kr.ac.cu.vo.FaqVO;
import kr.ac.cu.vo.ShopVO;
@Controller
public class faqController {
	@Autowired
	private FaqService faqService;

	
	@RequestMapping("faq")
	public String faq(Model model){

		model.addAttribute("faqList", faqService.getFaqListService());
		
		return "faq";
	}
	
//	@RequestMapping("addfaq")
//	public String join(FaqVO vo){
//		//request로부터 값을 꺼내서 사용함...
//		System.out.println(vo);
//		//회원가입하는 서비스의 메서드를 호출함...
//		int count = faqService.addFaqService(vo);
//		
//		if(count==1){
//			return "redirect:/faq";
//		}
//		else{
//			return "redirect:/insertfaqForm";
//		}
//	}
	@RequestMapping("insertfaqForm")
	public String insertfaqForm(){
		
		return "insertfaqForm";
	}
	
	@RequestMapping("addfaq")
	public String addShop(@RequestParam("fcategory") String fcategory, @RequestParam("title") String title,
			@RequestParam("content") String content){
		FaqVO vo = new FaqVO();
		vo.setFcategory(fcategory);
		vo.setTitle(title);
		vo.setContent(content);
		
		faqService.addFaqService(vo);
		return "redirect:/faq";
	}
	
	@RequestMapping("fupdateform")
	public String UpdateForm(){
		
		return "updatefaqForm";
	}
	
	
	@RequestMapping("fupdate")
	public String mupdateform(@RequestParam("fnum")int fnum,@RequestParam("fcategory")String fcategory, @RequestParam("title")String title ,@RequestParam("content")String content){
		FaqVO user=new FaqVO();
		user.setFnum(fnum);
		user.setFcategory(fcategory);
		user.setTitle(title);
		user.setContent(content);
		
		faqService.updateFaqService(user);
		System.out.println(user);
		return "redirect:/faq";
	}
	
	
	@RequestMapping("deletefaq")
	public String mdelete(FaqVO vo,HttpServletRequest request){
		FaqVO user=new FaqVO();
		user.setFnum(Integer.parseInt(request.getParameter("fnum")));
		System.out.println(request.getParameter("fnum"));
		faqService.deleteFaqService(vo);
		return "redirect:/faq";
	}
}
