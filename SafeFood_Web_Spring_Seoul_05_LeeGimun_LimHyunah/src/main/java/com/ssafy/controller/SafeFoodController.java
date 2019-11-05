package com.ssafy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssafy.service.FoodService;
import com.ssafy.service.MemberService;
import com.ssafy.vo.Food;
import com.ssafy.vo.FoodPageBean;
import com.ssafy.vo.Ingestion;
import com.ssafy.vo.Member;
import com.ssafy.vo.Member_Has_Allergy;

@Controller
public class SafeFoodController {

	@Autowired
	FoodService fservice;

	@Autowired
	MemberService mservice;

	@RequestMapping(value = "/main.safefood", method = RequestMethod.GET)
	public String main() {
		return "main";
	}

	// �쟾泥� 寃��깋
	@RequestMapping(value = "/foodlist.safefood", method = RequestMethod.GET)
	public String foodlist(Model model) {
		System.out.println("-------- flist ---------");
		List<Food> flist = fservice.search(null);
		model.addAttribute("list", flist);
		return "foodlist";
	}

	// keyword 寃��깋
	@RequestMapping(value = "/foodlist.safefood", method = RequestMethod.POST)
	public String foodlist(Model model, String key, String word) {
		List<Food> flist = fservice.search(new FoodPageBean(key, word, null, 1));
		model.addAttribute("list", flist);
		return "foodlist";
	}

	// 濡쒓렇�씤 View 泥섎━
	@RequestMapping(value = "/loginForm.safefood", method = RequestMethod.GET)
	public String loginForm() {
		return "login";
	}

	// 濡쒓렇�씤
	@RequestMapping(value = "/loginProcess.safefood", method = RequestMethod.POST)
	public String loginProcess(HttpSession session, Model model, String id, String pass) {
		Member m = mservice.searchOne(id);
		if (m != null && m.getPass().equals(pass)) {
			session.setAttribute("sessionId", id);
			return "redirect:/main.safefood";

		} else { // 濡쒓렇�씤 �떎�뙣
			String error = "아이디 또는 비밀번호를 확인해주세요.";
			model.addAttribute("error", error);
			return "login";
		}
	}

	// 濡쒓렇�븘�썐
	@RequestMapping(value = "/logout.safefood", method = RequestMethod.GET)
	public String logoutProcess(HttpSession session) {
		session.setAttribute("sessionId", null);
		return "redirect:/main.safefood";
	}

	// �긽�꽭�럹�씠吏�
	@RequestMapping(value = "/detail.safefood", method = RequestMethod.GET)
	public String logoutProcess(HttpSession session, Model model, int code) {
		Food f = fservice.searchOne(code);
		model.addAttribute("f", f);
		List<Member_Has_Allergy> list = mservice.searchAllergy((String) session.getAttribute("sessionId"));
		String tmp = "";
		for (Member_Has_Allergy mha : list) {
			if (f.getMaterial().contains(mservice.getAname(mha.getAcode()).getAname())) {
				tmp += mservice.getAname(mha.getAcode()).getAname() + " ";
			}
		}
		model.addAttribute("allergy", tmp);
		return "detail";
	}

	// �쉶�썝媛��엯 View 泥섎━
	@RequestMapping(value = "/insertForm.safefood", method = RequestMethod.GET)
	public String insertForm(@ModelAttribute Member member) {
		return "join";
	}

	// �쉶�썝媛��엯 泥섎━
	@RequestMapping(value = "/insertProcess.safefood", method = RequestMethod.POST)
	public String insertProcess(@ModelAttribute Member member, String[] allergy) {
		System.out.println(Arrays.toString(allergy));
		System.out.println(member);
		mservice.insert(member, allergy);
		return "redirect:/loginForm.safefood";
	}

	// passwordForm.safefood - GET -> findPassword.jsp
	@RequestMapping(value = "/passwordForm.safefood", method = RequestMethod.GET)
	public String passwordForm() {
		return "findPassword";
	}

	@RequestMapping(value = "/findPassword.safefood", method = RequestMethod.POST)
	public void findPassword(HttpServletResponse response, String id, String name) {
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		Member m = mservice.searchOne(id);
		if (m != null && m.getName().equals(name)) {
			out.println(
					"<script>alert('Password : " + m.getPass() + "'); location.href='loginForm.safefood';</script>");
		} else {
			// �뾾�뒗 寃쎌슦 error
			out.println("<script>alert('Please check ID or Name'); location.href='passwordForm.safefood';</script>");
		}
	}

	@RequestMapping(value = "/myinfo.safefood", method = RequestMethod.GET)
	public String myinfo(Model model, String id) {
		Member m = mservice.searchOne(id);
		model.addAttribute("m", m);
		List<Member_Has_Allergy> list = mservice.searchAllergy(id);
		String tmp = "";
		// �븣�윭吏� �씠由꾩쑝濡� 諛붽퓭�빞�븿
		for (Member_Has_Allergy mha : list) {
			tmp += mservice.getAname(mha.getAcode()).getAname() + " ";
		}
		model.addAttribute("allergy", tmp);
		return "myinfo";
	}

	@RequestMapping(value = "/modifyForm.safefood", method = RequestMethod.GET)
	public String modifyForm(Model model, String id) {
		Member m = mservice.searchOne(id);
		model.addAttribute("m", m);
		return "myinfomodify";
	}

	@RequestMapping(value = "/modifyProcess.safefood", method = RequestMethod.POST)
	public String modifyProcess(String id, String pass, String name, String address, String[] allergy) {
		Member m = new Member(id, pass, name, address);
		mservice.modify(m, allergy);
		return "myinfomodifyresult";
	}

//	addFoodProcess.safefood?id=${sessionId}&code=${f.code}
	// �븣�윭吏� �엳�쑝硫� �븣�윭吏� 紐⑸줉 �븣�젮二쇨퀬 異붽� 紐삵븯寃� �븯湲�
	@RequestMapping(value = "/addFoodProcess.safefood", method = RequestMethod.GET)
	public void addFoodProcess(HttpSession session, HttpServletResponse response, String id, String code) {
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		boolean flag = true;

		try {
			List<Member_Has_Allergy> list = mservice.searchAllergy((String) session.getAttribute("sessionId"));
			Food f = fservice.searchOne(Integer.parseInt(code));
			for (Member_Has_Allergy mha : list) {
				if (f.getMaterial().contains(mservice.getAname(mha.getAcode()).getAname())) {
					out.println(
							"<script>alert('Warning : This product is allergic to food. You cannot add it.'); location.href='foodlist.safefood';</script>");
					flag = false;
				}
			}
			if (flag) {
				mservice.insertIngestion(new Ingestion(id, Integer.parseInt(code)));
				out.println("<script>alert('Add Success'); location.href='foodlist.safefood';</script>");
			}
		} catch (Exception e) {
			out.println("<script>alert('Duplicate Error'); location.href='foodlist.safefood';</script>");
		}
	}

	@RequestMapping(value = "/myfoodlist.safefood", method = RequestMethod.GET)
	public String myfoodlist(HttpSession session, Model model) {
		String id = (String) session.getAttribute("sessionId");
		if (id == null) { // 濡쒓렇�씤 �븘�슂
			return "redirect:/loginForm.safefood";
		} else {
			List<Food> list = mservice.searchIngestion(id);
			model.addAttribute("list", list);
			return "myfoodlist";
		}
	}

	@RequestMapping(value = "/delFoodProcess.safefood", method = RequestMethod.GET)
	public void myfoodlist(HttpServletResponse response, String id, String code) {
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		mservice.deleteIngestion(new Ingestion(id, Integer.parseInt(code)));
		out.println("<script>alert('Delete Success'); location.href='myfoodlist.safefood';</script>");
	}
	
	@RequestMapping(value = "/unregisterForm.safefood", method = RequestMethod.GET)
	public String unregisterForm() {
		return "unregisterform";
	}
	
	@RequestMapping(value = "/unregisterProcess.safefood", method = RequestMethod.POST)
	public void unregisterProcess(HttpSession session, HttpServletResponse response, String id, String pass) {
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if(mservice.searchOne(id).getPass().equals(pass)) {
			mservice.delete(id);
			session.setAttribute("sessionId", null);
			out.println("<script>alert('Unregister Success'); location.href='main.safefood';</script>");
		}else {
			out.println("<script>alert('Unregister Failed'); location.href='unregisterForm.safefood';</script>");
		}
	}
	
	@RequestMapping(value = "/board.safefood", method = RequestMethod.GET)
	public String goBoard() {
		return "board";
	}
}
