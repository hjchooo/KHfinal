package kh.com.finalProject.note;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoteService {
	
	@Autowired
	private NoteDAO dao;

	private int recordCntPerPage = 5; // 한페이지에 보여질 갯수
	private int naviCntPerPage = 5; // 페이지 갯수(1~10, 11~20, 21~30) 10개씩
	
	//쪽지 알림
		public int noteCount(String to_id) throws Exception {
			System.out.println("noteCount 도착");
			return dao.count_to_id(to_id);
		}
	
	//쪽지 보내기, 답장
	public int insert(NoteDTO dto) throws Exception {
		System.out.println("NoteService 도착");
		return dao.insert(dto);
	}
	
	// 쪽지 조회
	public List<NoteDTO> select_to_id(int currentPage, String to_id) throws Exception{
		System.out.println("NoteService 도착");
		
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		return dao.select_to_id(startRange, endRange,to_id);
	}
	
	//쪽지 삭제
	public int deleteNote(int note_seq) {
		System.out.println("NoteService 도착");
		return dao.deleteNote(note_seq);
	}

	public HashMap<String, Object> getNotePageNavi(int currentPage, String to_id) throws Exception {
		System.out.println("ReplyService CurrentPage : " + currentPage);
		int recordTotalCnt = dao.count_to_id(to_id); // 사용자에게 보낸 쪽지 조회
		System.out.println("recordTotalCnt : " + recordTotalCnt);

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
	
}
