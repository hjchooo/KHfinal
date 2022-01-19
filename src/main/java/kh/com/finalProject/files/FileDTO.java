package kh.com.finalProject.files;

public class FileDTO {

	private int file_seq;
	private int board_seq;
	private String ori_name;
	private String sys_name;

	public FileDTO() {
		System.out.println("FileDTO 인스턴스 생성");
	}

	public FileDTO(int file_seq, int board_seq, String ori_name, String sys_name) {
		super();
		this.file_seq = file_seq;
		this.board_seq = board_seq;
		this.ori_name = ori_name;
		this.sys_name = sys_name;
	}

	public int getFile_seq() {
		return file_seq;
	}

	public void setFile_seq(int file_seq) {
		this.file_seq = file_seq;
	}

	public int getBoard_seq() {
		return board_seq;
	}

	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}

	public String getOri_name() {
		return ori_name;
	}

	public void setOri_name(String ori_name) {
		this.ori_name = ori_name;
	}

	public String getSys_name() {
		return sys_name;
	}

	public void setSys_name(String sys_name) {
		this.sys_name = sys_name;
	}

	@Override
	public String toString() {
		return "FileDTO [file_seq=" + file_seq + ", board_seq=" + board_seq + ", ori_name=" + ori_name + ", sys_name="
				+ sys_name + "]";
	}

}
