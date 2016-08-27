package studyMate.mapper;

import java.util.List;

import studyMate.dto.StudyGroup;

public interface StudyGroupMapper {
	
	//로그인한 user가 가입한 스터디그룹 리스트 조회
	public List<StudyGroup> selectList(int userIdx); 
	
	//로그인한 user가 가입한 스터디가 없을 경우
	//추천 리스트 조회 -> 랜덤으로 10개 조회
	public List<StudyGroup> selectRecommendList();
	
	//스터디 그룹 index로 각 스터디 그룹 내용 조회
	public StudyGroup selectByStudyIdx(int studyIdx);

}
