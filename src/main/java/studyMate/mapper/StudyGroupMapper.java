package studyMate.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import studyMate.dto.ApplicationForm;
import studyMate.dto.Pagination;
import studyMate.dto.StudyGroup;

public interface StudyGroupMapper {

	//로그인한 user가 가입한 스터디그룹 리스트 조회
	public List<StudyGroup> selectList(int userIdx); 

	//로그인한 user가 가입한 스터디가 없을 경우
	//추천 리스트 조회 -> 랜덤으로 20개 조회
	public List<StudyGroup> selectRecommendList();

	//승인 대기중 스터디 그룹 리스트 조회
	public List<StudyGroup> selectStandByList(int userIdx);

	//스터디 그룹 index로 각 스터디 그룹 내용 조회
	public StudyGroup selectByStudyIdx(int studyIdx);

	//스터디 가입 신청서 등록
	public void insertApplication(ApplicationForm applForm);

	//이미 신청한 스터디이거나 가입한 스터디 인지.
	public int selectDoubleCheck(ApplicationForm applForm);
	
	public void insertStudyGroup(StudyGroup studyGroup);
	
	//studyGroup pagination
	public List<StudyGroup> selectPageStudyGroupList(Pagination pagination);

	//전체 레코드 갯수 카운트 || 조건에 맞는 레코드 갯수 카운트
	public int selectCountStudyGroup(Pagination pagination);
	
	//내가 가입한 스터디 그룹 레코드 카운트 || 조건에 맞는 레코드 갯수 카운트
	public int selectCountMyStudyGroup(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, @Param("userIdx") int userIdx);
	
	//내가 가입한 스터디 그룹 페이지네이션
	public List<StudyGroup> selectPageMyStudyGroupList(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, @Param("userIdx") int userIdx);
	
}
