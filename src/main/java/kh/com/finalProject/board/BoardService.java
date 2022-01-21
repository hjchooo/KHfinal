package kh.com.finalProject.board;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kh.com.finalProject.files.FileDAO;
import kh.com.finalProject.files.FileDTO;
import kh.com.finalProject.report.ReportDTO;

@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;

	@Autowired
	private FileDAO fdao;

	public BoardService() {
		System.out.println("BoardService 인스턴스 생성");
	}

	private int recordCntPerPage = 10;
	private int naviCntPerPage = 10;

	// 게시판 전체 조회
	public List<BoardDTO> selectAll(int currentPage) throws Exception {
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		List<BoardDTO> list = dao.selectAll(startRange, endRange);
		for (BoardDTO dto : list) {
			System.out.println(dto.toString());
		}
		return list;
	}
	
	// 게시판 인기순으로 보기
		public List<BoardDTO> orderByPopular(String popular, int currentPage) throws Exception{
			int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
			int endRange = currentPage * recordCntPerPage;
			List<BoardDTO> list = dao.orderByPopular(popular, startRange, endRange);
			return list;
		}
		
	// 게시판 조건별로 가져오기
	public List<BoardDTO> selectAllOption(String selectOption, int currentPage) throws Exception {
		System.out.println("게시판 조건별로 가져오기");
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		List<BoardDTO> list = dao.selectAllOption(selectOption, startRange, endRange);
		return list;
	}

	// 게시글 상세조회
	public BoardDTO selectOne(int board_seq) throws Exception {
		return dao.selectOne(board_seq);
	}

	// 게시판 페이징
	public HashMap<String, Object> getPageNavi(int currentPage) throws Exception {
		int recordTotalCnt = dao.countAll();

		// �� �� �������� ������
		int pageTotalCnt = 0;
		if (recordTotalCnt % recordCntPerPage > 0) {
			pageTotalCnt = (recordTotalCnt / recordCntPerPage) + 1;
		} else {
			pageTotalCnt = recordTotalCnt / recordCntPerPage;
		}

		// currentPage�� ���� ������ġ
		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCnt) {
			currentPage = pageTotalCnt;
		}

		// ���� �׺� ������, �� �׺� ������ ����ֱ�
		int startNavi = ((currentPage - 1) / naviCntPerPage) * naviCntPerPage + 1;
		int endNavi = startNavi + naviCntPerPage - 1;
		// endNavi �� ������ ���� �ʰ����� �ʰ� �����ֱ�
		if (endNavi > pageTotalCnt) {
			endNavi = pageTotalCnt;
		}

		// ����, ���� ��ư �ʿ� ���� ����
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

	//
	public HashMap<String, Object> getPageNavi2(String select, String keyword, int currentPage) throws Exception {
		int recordTotalCnt = dao.countAllOption(select, keyword);

		// �� �� �������� ������
		int pageTotalCnt = 0;
		if (recordTotalCnt % recordCntPerPage > 0) {
			pageTotalCnt = (recordTotalCnt / recordCntPerPage) + 1;
		} else {
			pageTotalCnt = recordTotalCnt / recordCntPerPage;
		}

		// currentPage�� ���� ������ġ
		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCnt) {
			currentPage = pageTotalCnt;
		}

		// ���� �׺� ������, �� �׺� ������ ����ֱ�
		int startNavi = ((currentPage - 1) / naviCntPerPage) * naviCntPerPage + 1;
		int endNavi = startNavi + naviCntPerPage - 1;
		// endNavi �� ������ ���� �ʰ����� �ʰ� �����ֱ�
		if (endNavi > pageTotalCnt) {
			endNavi = pageTotalCnt;
		}

		// ����, ���� ��ư �ʿ� ���� ����
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

		HashMap<String, Object> map2 = new HashMap<>();
		map2.put("startNavi", startNavi);
		map2.put("endNavi", endNavi);
		map2.put("needPrev", needPrev);
		map2.put("needNext", needNext);
		map2.put("currentPage", currentPage);

		return map2;
	}

	// 게시글 조회수+1
	public int updateView_count(int board_seq) throws Exception {
		System.out.println("���񽺵���");
		return dao.updateView_count(board_seq);
	}

	// 게시판 검색
	public List<BoardDTO> searchBoard(String searchType, String keyword, int currentPage) throws Exception {
		System.out.println("게시판 검색");
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		List<BoardDTO> list = dao.searchBoard(searchType, keyword, startRange, endRange);
		for (BoardDTO dto : list) {
			System.out.println("�˻� ���" + dto.toString());
		}
		return list;
	}

	// 게시글 등록
	public int insertBoard(BoardDTO dto) throws Exception {
		System.out.println("게시글 등록 서비스");
		int board_seq = dao.selectSeq();
		System.out.println(board_seq);

		// 1. 게시글 등록
		dto.setBoard_seq(board_seq); // 게시글에 게시글 번호 셋팅
		int rs = dao.insertBoard(dto);

		if (rs != -1) {
			return rs;
		}
		return -1;
	}

	// 게시글 seq 연동
	public int selectSeq() throws Exception {
		return dao.selectSeq();
	}

	// 게시글 신고
	public int report(ReportDTO dto) throws Exception {
		System.out.println("���񽺵���");
		return dao.report(dto);
	}

	// 게시글 삭제
	public int deleteBySeq(int board_seq) throws Exception {
		System.out.println("���񽺵���");
		return dao.deleteBySeq(board_seq);
	}

	// 게시글 수정
	public int modifyBySeq(BoardDTO dto) throws Exception {
		System.out.println("���� ����");
		return dao.modifyBySeq(dto);
	}

}
