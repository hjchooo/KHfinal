package kh.com.finalProject.member;

import java.sql.Date;

public class MemberDTO {

	private String id;
	private String pw;
	private String nickname;
	private String email;
	private String address;
	private Date signup_date;
	
	public MemberDTO()
	{
		//	default constructor
	}

	public MemberDTO(String id, String pw, String nickname, String email, String address, Date signup_date) {
		super();
		this.id = id;
		this.pw = pw;
		this.nickname = nickname;
		this.email = email;
		this.address = address;
		this.signup_date = signup_date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getSignup_date() {
		return signup_date;
	}

	public void setSignup_date(Date signup_date) {
		this.signup_date = signup_date;
	}

	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pw=" + pw + ", nickname=" + nickname + ", email=" + email + ", address="
				+ address + ", signup_date=" + signup_date + "]";
	}

}

