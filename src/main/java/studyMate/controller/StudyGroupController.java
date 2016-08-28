package studyMate.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import studyMate.dto.StudyGroup;
import studyMate.mapper.StudyGroupMapper;
import studyMate.service.StudyGroupService;

@Controller
public class StudyGroupController {
	

	@Autowired
	StudyGroupMapper studyGroupMapper;
	@Autowired
	StudyGroupService studyGroupService;
	
	
	//1)로그인한 user가 가입한 스터디 그룹 리스트 조회
	//2)가입된 스터디 없으면 추천 스터디 그룹 리스트 조회 
	@RequestMapping(value="/studyMain/studyList.do", method = RequestMethod.GET )
	public String selectList(Model model){ 
		
		List<StudyGroup> studyList =  studyGroupService.selectList(); 
		
		//가입된 스터디가 없으면 추천 스터디 리스트 조회
		if(studyList.isEmpty()){		
			List<StudyGroup> studyRecommendList = studyGroupMapper.selectRecommendList();
			model.addAttribute("list", studyRecommendList);
			
			return "studyMain/studyListBlank";
		}else{
			model.addAttribute("list", studyList);
			return "studyMain/studyList";
		}
		
	}
	//스터디 그룹 index로 스터디 상세 정보 조회
	@RequestMapping(value = "/studyMain/studyDetail.do", method = RequestMethod.GET)
	public String selectDetail(Model model, @RequestParam("idx") int studyIdx){
		
		model.addAttribute("studyGroup", studyGroupMapper.selectByStudyIdx(studyIdx));
		
		return "studyMain/studyDetail";
	}
	
	//스터디 신청서 페이지로.
	@RequestMapping(value = "/studyMain/applicationForm.do", method = RequestMethod.GET)
	public String test(){
		return "studyMain/applicationForm";
	}
	
	//스터디 신청 버튼을 눌렀을 때
	
	

}








