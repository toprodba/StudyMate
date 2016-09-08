package studyMate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import studyMate.dto.ApplicationForm;
import studyMate.dto.Pagination;
import studyMate.dto.StudyGroup;
import studyMate.dto.User;
import studyMate.mapper.ApplicationFormMapper;
import studyMate.mapper.StudyGroupMapper;
import studyMate.mapper.UserMapper;
import studyMate.service.StudyGroupService;
import studyMate.service.UserService;

@Controller
public class ApplicationFormController {
	
	@Autowired
	StudyGroupMapper studyGroupMapper;
	@Autowired
	StudyGroupService studyGroupService;
	@Autowired
	UserMapper userMapper;
	@Autowired
	ApplicationFormMapper applicationFormMapper;
	
	
	//스터디 신청서 페이지로 이동
	@RequestMapping(value = "/studyMain/applicationForm.do", method = RequestMethod.GET)
	public String applicationGet(Model model, ApplicationForm applicationform, StudyGroup studyGroup, @RequestParam("idx") int idx){
		User currentUser = UserService.getCurrentUser();//현재 로그인한 유저를 꺼내서
		model.addAttribute("user", currentUser);//모델에 등록해줌. 신청서 페이지에서 userIdx 필요.
		//System.out.println("현재 로그인한 사용자의 idx: "+currentUser.getIdx());

		//model.addAttribute("studyGroup",studyGroupMapper.selectByStudyIdx(idx));
		//System.out.println("스터디그룹의 idx: "+studyGroupMapper.selectByStudyIdx(idx).getIdx());

		//model.addAttribute("applicationForm", new ApplicationForm());
		return "studyMain/applicationForm";
	}

	//스터디 가입 신청서 등록
	@RequestMapping(value = "/studyMain/applicationForm.do", method = RequestMethod.POST)
	public String applicationPost(ApplicationForm applForm, Model model,Pagination pagination){
		System.out.println("신청서작성POST");
		//해당 스터디에 이미 신청/가입되어있으면 신청서 등록하지 않음
		if(studyGroupService.selectDoubleCheck(applForm)==1){	
			model.addAttribute("error","<script type='text/javascript'>alert('이미 신청/가입 된 스터디 입니다.');</script>");
			return "/studyMain/applicationForm";
			//신청서 등록	
		}else{
			studyGroupService.insertApplication(applForm);
			model.addAttribute("success","<script type='text/javascript'>alert('신청이 완료되었습니다.');</script>");
			return "redirect:/studyMain/studyList.do";
		}
		//전 페이지로 이동
		//return selectDetail(model, applForm.getStudyGroupIdx());	
	}
	
	//스터디 가입 신청서 보기
	@RequestMapping(value = "/studyManage/applicantList.do")
	public String applicantList(Model model, Pagination pagination, StudyGroup studyGroup){
		
		//pagination.setRecordCount(applicationFormMapper.selectCountApplicationForm(pagination, studyGroup.getIdx()));
		
		//model.addAttribute("list", applicationFormMapper.selectPage(pagination, studyGroup.getIdx()));
		
		return "/studyManage/applicantList";
	}
}
