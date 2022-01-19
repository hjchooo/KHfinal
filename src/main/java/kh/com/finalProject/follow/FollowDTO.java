package kh.com.finalProject.follow;

import java.sql.Date;

public class FollowDTO {
	private int follow_seq;
	private String follow_id;
	private String follower_id;
	private int follow_count;
	private Date follow_date;

	public FollowDTO() {
		System.out.println("FollowDTO 인스턴스 생성");
	}

	public FollowDTO(int follow_seq, String follow_id, String follower_id, int follow_count, Date follow_date) {
		super();
		this.follow_seq = follow_seq;
		this.follow_id = follow_id;
		this.follower_id = follower_id;
		this.follow_count = follow_count;
		this.follow_date = follow_date;
	}

	public int getFollow_seq() {
		return follow_seq;
	}

	public void setFollow_seq(int follow_seq) {
		this.follow_seq = follow_seq;
	}

	public String getFollow_id() {
		return follow_id;
	}

	public void setFollow_id(String follow_id) {
		this.follow_id = follow_id;
	}

	public String getFollower_id() {
		return follower_id;
	}

	public void setFollower_id(String follower_id) {
		this.follower_id = follower_id;
	}

	public int getFollow_count() {
		return follow_count;
	}

	public void setFollow_count(int follow_count) {
		this.follow_count = follow_count;
	}

	public Date getFollow_date() {
		return follow_date;
	}

	public void setFollow_date(Date follow_date) {
		this.follow_date = follow_date;
	}

	@Override
	public String toString() {
		return "FollowDTO [follow_seq=" + follow_seq + ", follow_id=" + follow_id + ", follower_id=" + follower_id
				+ ", follow_count=" + follow_count + ", follow_date=" + follow_date + "]";
	}

}
