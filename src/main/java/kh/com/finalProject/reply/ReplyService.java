package kh.com.finalProject.reply;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyService {
	@Autowired
	private ReplyDAO dao;

	public ReplyService() {
		System.out.println("ReplyService 인스턴스 생성");
	}

	// 댓글 삭제
	public int deleteReply(int reply_seq) throws Exception {
		System.out.println("댓글 삭제 service");
		return dao.deleteReply(reply_seq);
	}

	// 댓글 수정
	public int modifyReply(String re_content, int reply_seq) throws Exception {
		System.out.println("댓글 수정 서비스");
		return dao.modifyReply(re_content, reply_seq);
	}

	// 댓글 등록
	public int insertReply(ReplyDTO dto) throws Exception {
		System.out.println("댓글 등록 서비스");
		return dao.insertReply(dto);
	}

	// 댓글 전체 조회
	public List<ReplyDTO> selectAll(int re_board_seq) throws Exception {
		return dao.selectAll(re_board_seq);
	}

	// 게시판 번호로 댓글 조회
	public ReplyDTO selectOne(int board_seq) throws Exception {
		return dao.selectOne(board_seq);
	}

	// 댓글 페이징
	private int recordCntPerPage = 5; // 한페이지에 보여질 갯수
	private int naviCntPerPage = 5; // 페이지 갯수(1~10, 11~20, 21~30) 10개씩

	public HashMap<String, Object> getPageNavi(int currentPage) throws Exception {
		System.out.println("ReplyService CurrentPage : " + currentPage);
		int recordTotalCnt = dao.countAll(); // 전체 데이터수

		int pageTotalCnt = 0; // 총 몇페이지가 나올지
		if (recordTotalCnt % recordCntPerPage > 0) { // 총 데이터수 와 10개의 페이지를 나눈 나머지
			pageTotalCnt = (recordTotalCnt / recordCntPerPage) + 1;
		} else {
			pageTotalCnt = recordTotalCnt / recordCntPerPage;
		}

		if (currentPage < 1) { // currentPage 안전 장치
			currentPage = 1;

		} else if (currentPage > pageTotalCnt) {
			currentPage = pageTotalCnt;
		}

		// 시작 네비 페이지, 끝 네비 페이지 잡아주기
		int startNavi = ((currentPage - 1) / naviCntPerPage) * naviCntPerPage + 1;
		int endNavi = startNavi + naviCntPerPage - 1;

		if (endNavi > pageTotalCnt) { // endNavi 총 페이지 수를 초과되지 않게 맞춰주기.
			endNavi = pageTotalCnt;
		}

		// 이전, 다음 버튼 필요 여부 세팅
		boolean needPrev = true;
		boolean needNext = true;
		if (startNavi == 1)
			needPrev = false;
		if (endNavi == pageTotalCnt)
			needNext = false;

		System.out.println("startNavi : " + startNavi);
		System.out.println("endNavi : " + endNavi);
		System.out.println("needPrev : " + needPrev);
		System.out.println("needNext : " + needNext);

		HashMap<String, Object> map = new HashMap<>();
		map.put("startNavi", startNavi);
		map.put("endNavi", endNavi);
		map.put("needPrev", needPrev);
		map.put("needNext", needNext);
		map.put("currentPage", currentPage);

		return map;
	}
	
	// ReplyDAO 메서드 호출 하는 메서드
	public List<ReplyDTO> getReplyPageList(int currentPage) throws Exception {
		System.out.println("ReplyDAO 메서드 호출 CurrentPage: " + currentPage);
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;

		List<ReplyDTO> list = dao.getReplyPageList(startRange, endRange);
		for (ReplyDTO dto : list) {
			System.out.println("댓글페이징 부분 Board_seq : " + dto.getRe_board_seq());
			System.out.println("댓글페이징 부분 Reply_seq : " + dto.getReply_seq());
		}
		return list;
	}

}
