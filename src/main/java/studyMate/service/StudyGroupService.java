package studyMate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import studyMate.dto.StudyGroup;
import studyMate.dto.User;
import studyMate.mapper.StudyGroupMapper;

@Service
public class StudyGroupService {
	
	@Autowired
	StudyGroupMapper studyGroupMapper;
	
	//getCurrentUser() 메소드 현재 로그인된 사용자에 꺼내기
		public static User getCurrentUser() {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			if (authentication instanceof MyAuthenticationProvider.MyAuthenticaion)
				return ((MyAuthenticationProvider.MyAuthenticaion) authentication).getUser();
			return null;
		}
	
	//현재 로그인된 사용자가 가입한 스터디 리스트 조회
	public List<StudyGroup> selectList() {
		
		User user = getCurrentUser();
		int userIdx = user.getIdx();
		
		return studyGroupMapper.selectList(userIdx);
	}
	
	
	

}







