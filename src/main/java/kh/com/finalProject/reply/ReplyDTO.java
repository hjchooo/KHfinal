package kh.com.finalProject.reply;

import java.sql.Date;

public class ReplyDTO {
	private int reply_seq;
	private int re_board_seq;
	private String re_content;
	private String reply_writer_id;
	private String reply_writer_nickname;
	private Date reply_written_date;

	public ReplyDTO() {
		System.out.println("ReplyDTO 인스턴스 생성");
	}

	public ReplyDTO(int reply_seq, int re_board_seq, String re_content, String reply_writer_id,
			String reply_writer_nickname, Date reply_written_date) {
		super();
		this.reply_seq = reply_seq;
		this.re_board_seq = re_board_seq;
		this.re_content = re_content;
		this.reply_writer_id = reply_writer_id;
		this.reply_writer_nickname = reply_writer_nickname;
		this.reply_written_date = reply_written_date;
	}

	public int getReply_seq() {
		return reply_seq;
	}

	public void setReply_seq(int reply_seq) {
		this.reply_seq = reply_seq;
	}

	public int getRe_board_seq() {
		return re_board_seq;
	}

	public void setRe_board_seq(int re_board_seq) {
		this.re_board_seq = re_board_seq;
	}

	public String getRe_content() {
		return re_content;
	}

	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}

	public String getReply_writer_id() {
		return reply_writer_id;
	}

	public void setReply_writer_id(String reply_writer_id) {
		this.reply_writer_id = reply_writer_id;
	}

	public String getReply_writer_nickname() {
		return reply_writer_nickname;
	}

	public void setReply_writer_nickname(String reply_writer_nickname) {
		this.reply_writer_nickname = reply_writer_nickname;
	}

	public Date getReply_written_date() {
		return reply_written_date;
	}

	public void setReply_written_date(Date reply_written_date) {
		this.reply_written_date = reply_written_date;
	}

	@Override
	public String toString() {
		return "ReplyDTO [reply_seq=" + reply_seq + ", re_board_seq=" + re_board_seq + ", re_content=" + re_content
				+ ", reply_writer_id=" + reply_writer_id + ", reply_writer_nickname=" + reply_writer_nickname
				+ ", reply_written_date=" + reply_written_date + "]";
	}

}
