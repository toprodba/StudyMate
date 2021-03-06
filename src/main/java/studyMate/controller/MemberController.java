package studyMate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import studyMate.dto.User;
import studyMate.mapper.UserMapper;
import studyMate.service.UserService;

@Controller
public class MemberController {
	
	@Autowired
	UserMapper userMapper;
	
	@Autowired
	UserService userService;
	
	/*@RequestMapping(value = "/member/user/main.do")
	@RequestMapping(value = "/member/user/myPage.do")
	public String main(Model model){
		return "member/user/main";
		return "member/user/myPage";
	}*/
	
	@RequestMapping(value = "/member/login.do", method = RequestMethod.GET)
	public String login(Model model){
		model.addAttribute("user", new User());
		return "member/login";
	}
	
	@RequestMapping(value = "/member/join.do", method = RequestMethod.GET)
	public String join(Model model){
		model.addAttribute("user", new User());
		return "member/join";
	}
	
	@RequestMapping(value = "/member/join.do", method = RequestMethod.POST)
	public String join(Model model, User user){
		
		String message = userService.userValidateBeforeJoin(user);
		if(message == null){
			userMapper.insert(user);
			model.addAttribute("success", "<script type='text/javascript'>alert('가입되었습니다.');</script>");
			return "member/login";
		}else{
			model.addAttribute("error", message);
			return "member/join";
		}
	}
	
	//회원정보 수정
	/*@RequestMapping(value = "/member/user/myProfile.do", method = RequestMethod.GET)*/
	@RequestMapping(value = "/member/user/myInfoModify.do", method = RequestMethod.GET)
	public String myProfile(Model model){
		//UserService 클래스의 static 메소드로 현재 세션에 있는(로그인 한) User를 꺼내는 메소드
		model.addAttribute("user", UserService.getCurrentUser());
		
		return "member/user/myInfoModify";
	}
	
	@RequestMapping(value = "/member/user/myInfoModify.do", method = RequestMethod.POST)
	public String myProfile(Model model, User user){
		
		String message = userService.userValidateBeforeUpdate(user);
		
		if(message == null){
			userMapper.update(user);
			
			//현재 세션도 업데이트
			UserService.setCurrentUser(user);
			model.addAttribute("success", "수정이 완료되었습니다.");
		}else{
			model.addAttribute("error", message);
		}
		
		return "member/user/myInfoModify";
	}
	
	//회원 탈퇴
	@RequestMapping(value = "/member/user/unregister.do", method = RequestMethod.GET)
	public String unregister(Model model){
		model.addAttribute("user", UserService.getCurrentUser());
		
		return "member/user/unregister";
	}
	
	@RequestMapping(value = "/member/user/unregister.do", method = RequestMethod.POST)
	public String unregister(Model model, User user, @RequestParam("password2") String password2, @RequestParam("idx") int idx){
		
		User currentUser = UserService.getCurrentUser();
		
		if(currentUser.getPassword().equals(password2)){
			userMapper.deleteByIdx(idx);
			model.addAttribute("success","<script type='text/javascript'>alert('그동안 이용해주셔서 감사합니다.');</script>");
			return "member/login";
		}else{
			model.addAttribute("error","비밀번호가 일치하지 않습니다.");
			return "member/user/unregister";
		}
		
	}
	
	
	
	@RequestMapping(value = "/member/user/mySchedule.do" , method = RequestMethod.GET)
	public String mySchedule(){
		return "member/user/mySchedule";
	}
	
	
	@RequestMapping(value = "/studyRoom/board/boardList.do", method = RequestMethod.GET)
	public String boardList(Model model, @RequestParam("idx") String idx){
		
		model.addAttribute("idx",idx);
		
		return "studyRoom/board/boardList";
	}
	
	@RequestMapping(value = "/studyRoom/fileShare/fileShare.do", method = RequestMethod.GET)
	public String test7(){
		return "studyRoom/fileShare/fileShare";
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/member/user/findId.do", method = RequestMethod.GET)
	public String test1(){
		return "member/user/findId";
	}
	@RequestMapping(value = "/member/user/findPw.do", method = RequestMethod.GET)
	public String test2(){
		return "member/user/findPw";
	}
	
	
	
	@RequestMapping(value = "/member/user/myPage.do", method = RequestMethod.GET)
	public String test6(){
		return "member/user/myPage";
	}

	
}
