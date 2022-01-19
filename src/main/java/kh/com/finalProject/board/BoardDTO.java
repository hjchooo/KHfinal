package kh.com.finalProject.board;

import java.sql.Date;

public class BoardDTO {

	private int board_seq;
	private String title;
	private String content;
	private String writer_id;
	private String writer_nickname;
	private String category;
	private String secret;
	private String secretPw;
	private Date written_date;
	private int view_count;

	public BoardDTO() {
		System.out.println("BoardDTO 인스턴스 생성");
	}

	public BoardDTO(int board_seq, String title, String content, String writer_id, String writer_nickname,
			String category, String secret, String secretPw, Date written_date, int view_count) {
		super();
		this.board_seq = board_seq;
		this.title = title;
		this.content = content;
		this.writer_id = writer_id;
		this.writer_nickname = writer_nickname;
		this.category = category;
		this.secret = secret;
		this.secretPw = secretPw;
		this.written_date = written_date;
		this.view_count = view_count;
	}

	public int getBoard_seq() {
		return board_seq;
	}

	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter_id() {
		return writer_id;
	}

	public void setWriter_id(String writer_id) {
		this.writer_id = writer_id;
	}

	public String getWriter_nickname() {
		return writer_nickname;
	}

	public void setWriter_nickname(String writer_nickname) {
		this.writer_nickname = writer_nickname;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSecret() {
		return secret;
	}

	public void setSecret(String secret) {
		this.secret = secret;
	}

	public String getSecretPw() {
		return secretPw;
	}

	public void setSecretPw(String secretPw) {
		this.secretPw = secretPw;
	}

	public Date getWritten_date() {
		return written_date;
	}

	public void setWritten_date(Date written_date) {
		this.written_date = written_date;
	}

	public int getView_count() {
		return view_count;
	}

	public void setView_count(int view_count) {
		this.view_count = view_count;
	}

	@Override
	public String toString() {
		return "BoardDTO [board_seq=" + board_seq + ", title=" + title + ", content=" + content + ", writer_id="
				+ writer_id + ", writer_nickname=" + writer_nickname + ", category=" + category + ", secret=" + secret
				+ ", secretPw=" + secretPw + ", written_date=" + written_date + ", view_count=" + view_count + "]";
	}

}
