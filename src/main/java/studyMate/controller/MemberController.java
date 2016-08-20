package studyMate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	@RequestMapping(value = "/member/main.do")
	public String main(Model model){
		return "member/main";
	}
	
	@RequestMapping(value = "/member/login.do", method = RequestMethod.GET)
	public String login(Model model){
		return "member/login";
	}
}
