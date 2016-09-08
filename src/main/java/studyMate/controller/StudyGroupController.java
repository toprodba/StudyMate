package studyMate.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import studyMate.dto.StudyGroup;
import studyMate.dto.User;
import studyMate.mapper.StudyGroupMapper;
import studyMate.mapper.UserMapper;
import studyMate.mapper.User_StudyGroupMapper;
import studyMate.service.StudyGroupService;
import studyMate.service.UserService;
import studyMate.util.PageUtil;

@Controller
public class StudyGroupController {

	@Autowired
	StudyGroupMapper studyGroupMapper;
	@Autowired
	StudyGroupService studyGroupService;
	@Autowired
	UserMapper userMapper;
	@Autowired
	User_StudyGroupMapper user_studyGroupMapper;


	//1-1)로그인한 user가 가입한 스터디 그룹 리스트 조회
	//1-2)가입된 스터디 없으면 추천 스터디 그룹 리스트 조회 
	//2)승인대기 스터디 그룹 리스트 조회
	
	@RequestMapping(value="/studyMain/studyRecommendList.do")
	public String recommendList(Model model){
		model.addAttribute("list", studyGroupMapper.selectRecommendList());
		return "/studyMain/studyRecommendList";
	}
	
	@RequestMapping(value="/studyMain/studyList.do", method = RequestMethod.GET)
	public String selectList(Model model, @RequestParam(value = "pg", defaultValue = "1") int currentPage){

		int pageSize = 5;
		User user = UserService.getCurrentUser();
		int userIdx = user.getIdx();
		
		List<StudyGroup> list = studyGroupMapper.selectPageMyStudyGroupList(currentPage, pageSize, userIdx);
		int recordCount = studyGroupMapper.selectCountMyStudyGroup(currentPage, pageSize, userIdx);
		System.out.println("recordCount값: "+recordCount);
		model.addAttribute("list",list);
		model.addAttribute("pages", PageUtil.getPageList(currentPage, pageSize, recordCount));
		model.addAttribute("currentPage", currentPage);
		
		
		return "studyMain/studyList";
		//pagination.setRecordCount(studyGroupMapper.selectCountMyStudyGroup(pagination, userIdx));
		//model.addAttribute("list", studyGroupMapper.selectPageMyStudyGroupList(pagination, userIdx));
		
		/*List<StudyGroup> studyList =  studyGroupService.selectList(); 
		List<StudyGroup> standByList = studyGroupService.selectStandByList();

		model.addAttribute("standByList", standByList);

		//가입된 스터디가 없으면 추천 스터디 리스트 조회
		if(studyList.isEmpty()){		
			List<StudyGroup> studyRecommendList = studyGroupMapper.selectRecommendList();
			model.addAttribute("list", studyRecommendList);

			return "studyMain/studyListBlank";
		}else{
			model.addAttribute("list", studyList);
			return "studyMain/studyList";
		}*/
		
		//pagination.setRecordCount(studyGroupMapper.selectCountStudyGroup(pagination));
		
		//model.addAttribute("list", studyGroupMapper.selectPageStudyGroupList(pagination));
		
	}


	//스터디 그룹 index로 스터디 상세 정보 조회
	@RequestMapping(value = "/studyMain/studyDetail.do", method = RequestMethod.GET)
	public String selectDetail(Model model, @RequestParam("idx") int studyIdx){

		model.addAttribute("studyGroup", studyGroupMapper.selectByStudyIdx(studyIdx));

		return "studyMain/studyDetail";
	}

	
	
	//스터디 그룹 생성
	@RequestMapping(value = "/studyMain/studyCreate.do", method = RequestMethod.GET)
	public String studyCreateGet(Model model){
		
		//세션에서 로그인 아이디 꺼내기.
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String loginId = principal.toString();
		
		User leader = userMapper.selectByLoginId(loginId);
		model.addAttribute("leader", leader);
		model.addAttribute("studyGroup", new StudyGroup());
		
		return "studyMain/studyCreate";
	}
	
	@RequestMapping(value = "/studyMain/studyCreate.do", method = RequestMethod.POST)
	public String studyCreatePost(Model model, studyMate.dto.StudyGroup studyGroup){
		
		String errorMessage = studyGroupService.studyGroupValidateBeforeInsert(studyGroup);
		
		if(errorMessage == null){
			studyGroupMapper.insertStudyGroup(studyGroup);
			user_studyGroupMapper.insert(UserService.getCurrentUser().getIdx(), studyGroup.getIdx());
			return "redirect:/studyMain/studyList.do";
		}else{
			model.addAttribute("error",errorMessage);
			return "studyMain/studyCreate";
		}
	}

}
