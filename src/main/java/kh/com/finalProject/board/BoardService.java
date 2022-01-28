package kh.com.finalProject.board;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonObject;

import kh.com.finalProject.files.FileDAO;
import kh.com.finalProject.files.FileDTO;
import kh.com.finalProject.report.ReportDTO;

@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;

	@Autowired
	private FileDAO fdao;

	@Autowired
	private HttpSession session;

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

		int pageTotalCnt = 0;
		if (recordTotalCnt % recordCntPerPage > 0) {
			pageTotalCnt = (recordTotalCnt / recordCntPerPage) + 1;
		} else {
			pageTotalCnt = recordTotalCnt / recordCntPerPage;
		}

		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCnt) {
			currentPage = pageTotalCnt;
		}

		int startNavi = ((currentPage - 1) / naviCntPerPage) * naviCntPerPage + 1;
		int endNavi = startNavi + naviCntPerPage - 1;
		if (endNavi > pageTotalCnt) {
			endNavi = pageTotalCnt;
		}

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

		int pageTotalCnt = 0;
		if (recordTotalCnt % recordCntPerPage > 0) {
			pageTotalCnt = (recordTotalCnt / recordCntPerPage) + 1;
		} else {
			pageTotalCnt = recordTotalCnt / recordCntPerPage;
		}

		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCnt) {
			currentPage = pageTotalCnt;
		}

		int startNavi = ((currentPage - 1) / naviCntPerPage) * naviCntPerPage + 1;
		int endNavi = startNavi + naviCntPerPage - 1;
		if (endNavi > pageTotalCnt) {
			endNavi = pageTotalCnt;
		}

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
	public List<BoardDTO> searchBoard(String select, String keyword, int currentPage) throws Exception {
		System.out.println("게시판 검색");
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		List<BoardDTO> list = dao.searchBoard(select, keyword, startRange, endRange);
		for (BoardDTO dto : list) {
			System.out.println("�˻� ���" + dto.toString());
		}
		return list;
	}

	// 게시글 등록
	public int insertBoard(BoardDTO dto, FileDTO fdto) throws Exception {
		System.out.println("BoardService 게시글 등록 도착");
		int board_seq = dao.selectSeq();
		System.out.println("게시글 등록(boardService) : " + board_seq);

		// 게시글 등록
		dto.setBoard_seq(board_seq); // 게시글에 게시글 번호 셋팅
		int rs = dao.insertBoard(dto);

		// 파일 등록
		ArrayList<JsonObject> fileList = ((ArrayList<JsonObject>) session.getAttribute("fileList"));

		if (fdto.getOri_name() == null && fdto.getSys_name() == null) {
			System.out.println("fileList 길이 : " + fileList.size());
			for (JsonObject obj : fileList) {
				fdto.setBoard_seq(board_seq);
				System.out.println("파일 게시글 번호 : " + fdto.getBoard_seq());

				fdto.setOri_name(obj.get("ori_name").getAsString());
				System.out.println("fdto.setOri_name : " + fdto.getOri_name());

				fdto.setSys_name(obj.get("sys_name").getAsString());
				System.out.println("fdto.setSys_name : " + fdto.getSys_name());

				fdao.insertFile(fdto);
			}
		}

		return 0;

	}

	// 게시글 seq 연동
	public int selectSeq() throws Exception {
		return dao.selectSeq();
	}

	// 게시글 신고
	public int report(ReportDTO dto) throws Exception {
		return dao.report(dto);
	}

	// 게시글 삭제
	public int deleteBySeq(int board_seq) throws Exception {
		return dao.deleteBySeq(board_seq);
	}

	// 게시글 수정
	public int modifyBySeq(int board_seq, BoardDTO dto, FileDTO fdto) throws Exception {
		// 파일 등록
		System.out.println("boardService 게시글 수정 도착");
		System.out.println("==boardService 게시글 수정==board_seq : " + board_seq);
		System.out.println("==boardService 게시글 수정==boardDTO : " + dto);
		System.out.println("==boardService 게시글 수정==FileDTO : " + fdto);

		System.out.println("파일 게시글 번호 : " + fdto.getBoard_seq());
		dto.setBoard_seq(board_seq);
		int rs = dao.modifyBySeq(dto);

		System.out.println("BoardService 게시글 등록 도착");
		System.out.println("게시글 수정(boardService) : " + board_seq);

		fdto.setBoard_seq(board_seq);
	
		// 파일 등록
		ArrayList<JsonObject> fileList = ((ArrayList<JsonObject>) session.getAttribute("fileList"));
		
		// board_seq 로 ori_name 검색
		List<String> modifyOri_name = (ArrayList<String>) fdao.selectOri_name(board_seq);
		
		// board_seq 로 sys_name 검색
		List<String> modifySys_name = (ArrayList<String>) fdao.selectSys_name(board_seq);
		
		
		System.out.println("파일 게시글 번호 : " + fdto.getBoard_seq());
		System.out.println("파일 번호 출력 : " + fdto.getFile_seq());
		System.out.println("board_seq : " + fdto.getBoard_seq());
		System.out.println("file_seq : " + fdto.getFile_seq());
		
		
		if (fdto.getOri_name() == null && fdto.getSys_name() == null) {
			for (String mdOri : modifyOri_name) {
				fdto.setOri_name(mdOri);
				System.out.println("mdOri : " + mdOri);

			}
			for (String mdSys : modifySys_name) {
				fdto.setOri_name(mdSys);
				System.out.println("mdSys : " + mdSys);
			}

			for (int i = 0; i < modifyOri_name.size(); i++) {
				fdao.modifyFile(fdto);

			}

		} else if (fdto.getOri_name() != null && fdto.getSys_name() != null) {
			System.out.println("fileList 길이 : " + fileList.size());
			for (JsonObject obj : fileList) {

				fdto.setOri_name(obj.get("ori_name").getAsString());
				System.out.println("fdto.setOri_name : " + fdto.getOri_name());

				fdto.setSys_name(obj.get("sys_name").getAsString());
				System.out.println("fdto.setSys_name : " + fdto.getSys_name());
				fdao.modifyFile(fdto);
				
				
			}
		}
		return 0;
	}

}
