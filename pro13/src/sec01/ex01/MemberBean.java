package sec01.ex01;

import java.util.Date;

public class MemberBean {
	private String id;
	private String pwd;
	private String tier;
	private Date joinDate;

	public MemberBean() {
		
	}
	public MemberBean(String id, String pwd, String tier) {
		this.id=id;
		this.pwd=pwd;
		this.tier=tier;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getTier() {
		return tier;
	}
	public void setTier(String tier) {
		this.tier = tier;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	
}
