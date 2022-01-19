package kh.com.finalProject.board;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.com.finalProject.report.ReportDTO;

@Repository
public class BoardDAO {

	public BoardDAO() {
		System.out.println("BoardDAO 인스턴스 생성");
	}

	@Autowired
	private SqlSession session;
	
	// private int recordCntPerPage = 10;
	// private int naviCntPerPage = 10;
	
	// 게시글 전체 조회
	public List<BoardDTO> selectAll(int startRange, int endRange) throws Exception {
		HashMap<String, Object> map = new HashMap<>();
		map.put("startRange", startRange);
		map.put("endRange", endRange);
		return session.selectList("boardMapper.selectAll", map);
	}
	
	// 게시판 리스트 조건별로 가져오기
	public List<BoardDTO> selectAllOption(String selectOption, int startRange, int endRange) throws Exception{
		HashMap<String, Object> map = new HashMap<>();
		map.put("selectOption", selectOption);
		map.put("startRange", startRange);
		map.put("endRange", endRange);
		return session.selectList("boardMapper.selectAllOption", map);
	}
	
	// 게시글 조회수 +1
	public int updateView_count(int board_seq) throws Exception{
		System.out.println("조회수 +1");
		return session.update("boardMapper.updateView_count", board_seq);
	}
	
	// 검색글 전체 데이터 수 검색별로 가져오기
	public int countAllOption(String select, String keyword) throws Exception{
		System.out.println("");
		HashMap<String, String> map = new HashMap<>();
		map.put("select", select);
		map.put("keyword", keyword);
		return session.selectOne("boardMapper.countAllOption", map);
	}
	
	// 게시판 검색
	public List<BoardDTO> searchBoard(String select, String keywrod, int startRange, int endRange) throws Exception{
		System.out.println("게시판 검색");
		HashMap<String, Object> map = new HashMap<>();
		map.put("select", select);
		map.put("keyword", keywrod);
		map.put("startRange", startRange);
		map.put("endRange", endRange);
		return session.selectList("boardMapper.searchBoard", map);
	}
	
	// 게시글 신고
	public int report(ReportDTO dto) throws Exception{
		System.out.println("게시글 신고");
		return session.insert("boardMapper.report", dto);
	}
	
	// 게시글 상세조회
	public BoardDTO selectOne(int board_seq) throws Exception {
		return session.selectOne("boardMapper.selectOne", board_seq);
	}
	
	// 게시글 수 조회
	public int countAll() throws Exception {
		return session.selectOne("boardMapper.countAll");
	}

	// 게시글 등록
	public int insertBoard(BoardDTO dto) throws Exception {
		System.out.println("게시글 등록 DAO");
		return session.insert("boardMapper.insertBoard", dto);
	}

	// 게시글 seq 연동
	public int selectSeq() throws Exception {
		return session.selectOne("boardMapper.selectSeq");
	}
	
	// 게시글 삭제
	public int deleteBySeq(int board_seq) throws Exception{
		System.out.println("�Խñ� ����");
		return session.delete("boardMapper.deleteBySeq", board_seq);
	}
	
	// 게시글 수정
	public int modifyBySeq(BoardDTO dto) throws Exception{
		System.out.println("�Խñ� ����"); 
		return session.update("boardMapper.modifyBySeq", dto); 
	}
}
