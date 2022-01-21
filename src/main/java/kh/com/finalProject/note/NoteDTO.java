package kh.com.finalProject.note;

import java.sql.Date;

public class NoteDTO {
	
	private int note_seq;
	private String from_id;
	private String to_id;
	private String content;
	private Date note_date;
	
	public NoteDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NoteDTO(int note_seq, String from_id, String to_id, String content, Date note_date) {
		super();
		this.note_seq = note_seq;
		this.from_id = from_id;
		this.to_id = to_id;
		this.content = content;
		this.note_date = note_date;
	}

	public int getNote_seq() {
		return note_seq;
	}

	public void setNote_seq(int note_seq) {
		this.note_seq = note_seq;
	}

	public String getFrom_id() {
		return from_id;
	}

	public void setFrom_id(String from_id) {
		this.from_id = from_id;
	}

	public String getTo_id() {
		return to_id;
	}

	public void setTo_id(String to_id) {
		this.to_id = to_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getNote_date() {
		return note_date;
	}

	public void setNote_date(Date note_date) {
		this.note_date = note_date;
	}
	
	public String toString() {
		return note_seq + from_id + to_id + content + note_date;
	}
	
	
}
