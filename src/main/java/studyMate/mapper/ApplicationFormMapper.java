package studyMate.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import studyMate.dto.ApplicationForm;
import studyMate.dto.Pagination;

public interface ApplicationFormMapper {

	//applicationform 테이블 레코드 카운트
	public int selectCountApplicationForm(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, int studyGroupIdx);
	
	//pagination
	public List<ApplicationForm> selectPage(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, int studyGroupIdx);
}
