package kh.com.finalProject.likes;

public class LikesDTO {
	private int likes_seq;
	private int board_seq;
	private String likes_id;
	private int likes_count;

	public LikesDTO() {
		System.out.println("LikesDTO 인스턴스 생성");
	}

	public LikesDTO(int likes_seq, int board_seq, String likes_id, int likes_count) {
		super();
		this.likes_seq = likes_seq;
		this.board_seq = board_seq;
		this.likes_id = likes_id;
		this.likes_count = likes_count;
	}

	public int getLikes_seq() {
		return likes_seq;
	}

	public void setLikes_seq(int likes_seq) {
		this.likes_seq = likes_seq;
	}

	public int getBoard_seq() {
		return board_seq;
	}

	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}

	public String getLikes_id() {
		return likes_id;
	}

	public void setLikes_id(String likes_id) {
		this.likes_id = likes_id;
	}

	public int getLikes_count() {
		return likes_count;
	}

	public void setLikes_count(int likes_count) {
		this.likes_count = likes_count;
	}

	@Override
	public String toString() {
		return "LikesDTO [likes_seq=" + likes_seq + ", board_seq=" + board_seq + ", likes_id=" + likes_id
				+ ", likes_count=" + likes_count + "]";
	}

}
