package kr.ac.cu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.cu.service.PersonService;
import kr.ac.cu.service.ShopService;
import kr.ac.cu.vo.PersonVO;
import kr.ac.cu.vo.ShopVO;
@Controller
public class PersonController {
	@Autowired
	private PersonService personService;
	@Autowired
	private ShopService shopService;

	@RequestMapping("person")
	public String personList(Model model) {
		List<PersonVO> personList = personService.personList();
		model.addAttribute("personList", personList);
		return "/perlist";
	}

	@RequestMapping("perJoinForm")
	public String joinForm() {
		return "perJoinForm";
	}

	@RequestMapping("perJoin")
	public String join(@ModelAttribute PersonVO vo, HttpSession session, Model model) {
		personService.addPerson(vo);
		model.addAttribute("msg", "회원가입 성공!"); 
		model.addAttribute("url", "main.jsp"); 
		return "redirect:/main1";
	}

	@RequestMapping("checkIdForm")
	public String checkid(Model model, @RequestParam("pid") String pid, @ModelAttribute PersonVO vo) {
		boolean check = personService.checkId(vo);
		return "redirect:/jsp/confirmId.jsp?check=" + check+"&"+"pid="+pid;
	}

	@RequestMapping("perDelete")
	public String delete(PersonVO vo, HttpSession session) {
		System.out.println(vo);
		int count = personService.deletePerson(vo);
		if (count == 1) {
			return "redirect:/person";
		} else {
			return "redirect:/person";
		}
	}

	@RequestMapping("updatePersonForm")
	public String updateForm() {
		return "updatePersonForm";
	}

	@RequestMapping("perUpdate")
	public String update(PersonVO vo) {
		System.out.println(vo.toString());
		personService.updatePerson(vo);

		return "redirect:person";
	}

	@RequestMapping("logout")
	public String loginout(HttpSession session) {

		session.removeAttribute("loginEmail");
		session.setAttribute("loginEmail", null);
		session.invalidate();
		return "redirect:main1";
	}

	@RequestMapping("loginCheck")
	public String loginform(@ModelAttribute PersonVO vo, HttpSession session, HttpServletRequest request) {
		System.out.println(vo);
		System.out.println("service: " + personService.loginCheck(vo.getPid()));

		if (personService.loginCheck(vo.getPid()) == null) {
			personService.addPerson(vo);
		}
		session.setAttribute("loginEmail", vo.getPid());
		session.setAttribute("loginName", vo.getPname());
		System.out.println("password " + vo.getPpassword());
		if (vo.getPpassword().equals("facebook")) {
			session.setAttribute("loginType", "facebook");
		} else {
			session.setAttribute("loginType", "null");
		}
		return "redirect:main1";
	}

	@RequestMapping("joinCheck")
	public String joinform(@RequestParam("pid") String pid, @ModelAttribute PersonVO vo, HttpSession session, HttpServletRequest request) {
		personService.loginCheck(pid);
		System.out.println("idpassCheck" + personService.idpassCheck(vo));
		System.out.println("vo" + vo);
		
		if (personService.idpassCheck(vo) == null) {
			session.setAttribute("SessionMsg", "아이디 비밀번호를 확인하세요.");
		} else {
			session.setAttribute("loginEmail", vo.getPid());
			session.setAttribute("loginName", vo.getPname());
		}
		session.setAttribute("loginType", "null");
		return "redirect:main1";
	}

	   @RequestMapping("main1")
	   public String main(Model model) {

	      List<ShopVO> shopList = shopService.shoplist();
	      model.addAttribute("shopList", shopList);

	      return "/main";
	   }

}
