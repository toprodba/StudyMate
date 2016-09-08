package studyMate.dto;

public class User_StudyGroup {
	int userIdx;
	int studyGroupIdx;
	String memberType;
	String loginId;
	String memberName;
	String studyGroupName;
	
	public int getUserIdx() {
		return userIdx;
	}
	
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	
	public int getStudyGroupIdx() {
		return studyGroupIdx;
	}
	
	public void setStudyGroupIdx(int studyGroupIdx) {
		this.studyGroupIdx = studyGroupIdx;
	}
	
	public String getMemberType() {
		return memberType;
	}
	
	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}
	
	public String getLoginId() {
		return loginId;
	}
	
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	
	public String getMemberName() {
		return memberName;
	}
	
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	public String getStudyGroupName() {
		return studyGroupName;
	}
	
	public void setStudyGroupName(String studyGroupName) {
		this.studyGroupName = studyGroupName;
	}
	
	
}
