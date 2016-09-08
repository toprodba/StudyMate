package studyMate.mapper;

import java.util.List;

import studyMate.dto.UserSchedule;

public interface UserScheduleMapper {
	
	List<UserSchedule> selectAll(int userIdx);
	
	UserSchedule selectByIdx(int idx);
	
	void insert(UserSchedule userSchedule);
	
	//void update(UserSchedule userSchedule);
	
	void deleteByIdx(int idx);
}
