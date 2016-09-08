package studyMate.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import studyMate.dto.Pagination;
import studyMate.dto.User;
import studyMate.dto.User_StudyGroup;

public interface User_StudyGroupMapper {

	int selectCount(Pagination pagination);
	
	List<User> selectByUser(int studyGroupIdx);
	
	List<User> selectByUserName(@Param("studyGroupIdx") int studyGroupIdx, @Param("name") String name);
	
	//스터디 그룹을 만드는 경우 (조장이 되는경우)
	void insert(@Param("userIdx") int userIdx, @Param("studyGroupIdx") int studyGroupIdx);
	
	
	
	
	
	//존재하는 스터디 그룹에 가입 하는경우
	void joinStudyGroup(User_StudyGroup user_StudyGroup);//가입 승인이 나면 User_StudyGroup테이블에 insert
}
