package kh.com.finalProject.manager;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.com.finalProject.board.BoardDAO;
import kh.com.finalProject.board.BoardDTO;
import kh.com.finalProject.member.MemberDAO;
import kh.com.finalProject.report.ReportDAO;

@Service
public class ManagerService {

	@Autowired
	private BoardDAO bdao;
	@Autowired
	private MemberDAO mdao;
	@Autowired
	private ReportDAO rdao;
	
	private int recordCntPerPage = 5;
	private int naviCntPerPage = 5;

	// 전체 게시판 조회
	public List<BoardDTO> selectAll(int currentPage) throws Exception {
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;

		// 전체 게시판 조회
		List<BoardDTO> list = bdao.selectAll(startRange, endRange);

		return list;
	}

	// 전체 게시판 게시글 갯수
	public int selectAllBoardCount() throws Exception {
		return bdao.selectAllBoardCount();
	}
	
	// 당일 게시글 수
	public int dayBoardCount() throws Exception{
		return bdao.dayBoardCount();
	}
	
	// 오늘 가입한 회원 수
	public int countDayMember() throws Exception{
		return mdao.countDayMember();
	}
	
	// 신고 건수
	public int countReport() throws Exception{
		return rdao.countReport();
	}

	// 게시판 페이징
	public HashMap<String, Object> getPageNavi(int recordTotalCnt, int currentPage) throws Exception {
		
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

		HashMap<String, Object> map = new HashMap<>();
		map.put("startNavi", startNavi);
		map.put("endNavi", endNavi);
		map.put("needPrev", needPrev);
		map.put("needNext", needNext);
		map.put("currentPage", currentPage);

		return map;
	}
	
	public HashMap<String, Object> getPageNaviM(int recordTotalCntM, int currentPage) throws Exception {
		
		int pageTotalCnt = 0;
		if (recordTotalCntM % recordCntPerPage > 0) {
			pageTotalCnt = (recordTotalCntM / recordCntPerPage) + 1;
		} else {
			pageTotalCnt = recordTotalCntM / recordCntPerPage;
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
	
public HashMap<String, Object> getPageNaviR(int recordTotalCntR, int currentPage) throws Exception {
		
		int pageTotalCnt = 0;
		if (recordTotalCntR % recordCntPerPage > 0) {
			pageTotalCnt = (recordTotalCntR / recordCntPerPage) + 1;
		} else {
			pageTotalCnt = recordTotalCntR / recordCntPerPage;
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
}
