package studyMate.dto;

public class ApplicationForm {
	
	private int idx;
	private int userIdx;
	private int studyGroupIdx;
	private String reason;
	private String isAccept;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
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
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getIsAccept() {
		return isAccept;
	}
	public void setIsAccept(String isAccept) {
		this.isAccept = isAccept;
	}
	
	

}
