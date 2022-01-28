package kh.com.finalProject.board;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.JsonObject;

import kh.com.finalProject.files.FileDTO;
import kh.com.finalProject.files.FileService;
import kh.com.finalProject.follow.FollowDTO;
import kh.com.finalProject.follow.FollowService;
import kh.com.finalProject.likes.LikesDTO;
import kh.com.finalProject.likes.LikesService;
import kh.com.finalProject.member.MemberDTO;
import kh.com.finalProject.reply.ReplyDTO;
import kh.com.finalProject.reply.ReplyService;
import kh.com.finalProject.report.ReportDTO;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired // 보드
	private BoardService service;

	@Autowired // 파일
	private FileService fservice;

	@Autowired // 좋아요
	private LikesService lservice;

	@Autowired // 팔로우
	private FollowService followService;

	@Autowired // 댓글
	private ReplyService rservice;

	@Autowired // 세션객체
	private HttpSession session;

	public BoardController() {
		System.out.println("BoardController 인스턴스 생성");
	}

	// 게시글 전체 조회
	@RequestMapping("/toBoard.do")
	public String toBoard(@RequestParam("currentPage") int current, Model model, int currentPage) throws Exception {
		String writer_id = ((MemberDTO) session.getAttribute("loginSession")).getId();
		System.out.println("writer_id : " + writer_id);
		
		System.out.println(current);
		System.out.println("currentPage : " + currentPage);
		HashMap<String, Object> naviMap = service.getPageNavi(currentPage);
		List<BoardDTO> list = service.selectAll(currentPage);
		for (BoardDTO dto : list) {
			System.out.println(dto);
		}
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		return "board/freeBoard";
	}

	// 게시판 리스트 조건 별로 가져오기
	@RequestMapping("/toBoardOption.do")
	public String toBoardOption(Model model, String selectOption, int currentPage) throws Exception {
		System.out.println("selectOption : " + selectOption);
		System.out.println("currentPage : " + currentPage);
		HashMap<String, Object> naviMap = service.getPageNavi(currentPage);
		List<BoardDTO> list = service.selectAllOption(selectOption, (int) naviMap.get("currentPage"));
		for (BoardDTO dto : list) {
			System.out.println(dto);
		}
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		return "board/boardList";
	}

	// 게시글 상세조회
	@RequestMapping("/detailView.do")
	public String detailView(@RequestParam("board_seq") int boardSeq, Model model, int board_seq, String likes_id, String follow_id,
			int currentPage) throws Exception {

		
		BoardDTO dto = service.selectOne(board_seq);
		
		// 로그인 아이디
		String writer_id = ((MemberDTO) session.getAttribute("loginSession")).getId();
		
		System.out.println("writer_id : " + writer_id);
		System.out.println("dto : " + dto); // 게시판 상세조회
		System.out.println("board_seq : " + board_seq);
		System.out.println("currentPage : " + currentPage); // 댓글 페이지네이션

		// 댓글, 페이지네이션 영역
		// 댓글 리스트(게시판 번호로)
		// List<ReplyDTO> rList = rservice.selectAll(board_seq);
		// System.out.println(rList);
		// 이전, 다음 버튼
		HashMap<String, Object> naviMap = rservice.getPageNavi(board_seq, currentPage);
		// 페이지네이션
		List<ReplyDTO> replyPageList = rservice.getReplyPageList((int) naviMap.get("currentPage"));

		// 파일
		List<FileDTO> list = fservice.selectAll(board_seq); // 파일 리스트

		for (FileDTO f : list) {
			System.out.println(f);
		}
		
		// 좋아요가 되있는지 찾기위해 게시글번호와 회원번호를 보냄.
		LikesDTO likes = lservice.findLikes(board_seq, writer_id);
		FollowDTO follow = followService.findFollow(writer_id, dto.getWriter_id());
		System.out.println("좋아요 세션 아이디 : " + writer_id);
		
		// 찾은 정보를 heart로 담아서 보냄
		// model.addAttribute("rList", rList);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("replyPageList", replyPageList);
		model.addAttribute("likes", likes);
		model.addAttribute("follow", follow);
		model.addAttribute("list", list);
		model.addAttribute("dto", dto);
		return "board/detailView";
	}

	// 게시글 검색
	@RequestMapping("/searchProc.do")
	public String searchProc(Model model, String select, String keyword, int currentPage) throws Exception {
		System.out.println("select : " + select);
		System.out.println("keyword : " + keyword);
		System.out.println("currentPage : " + currentPage);
		HashMap<String, Object> naviMap = service.getPageNavi2(select, keyword, currentPage);
		List<BoardDTO> list = service.searchBoard(select, keyword, (int) naviMap.get("currentPage"));
		for (BoardDTO dto : list) {
			System.out.println(dto);
		}
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		return "board/boardList";
	}

	// 게시글 신고 페이지로 이동
	@RequestMapping("/toReport.do")
	public String toReport(Model model, String writer_id) {
		System.out.println("writer_id : " + writer_id);
		model.addAttribute("reported_person", writer_id);
		return "report/report";
	}

	// 게시글 신고
	@RequestMapping("/report.do")
	@ResponseBody
	public void report(ReportDTO dto) throws Exception {
		System.out.println(dto);
		System.out.println("report_value : " + dto.getReport_value());
		System.out.println("report_type : " + dto.getReport_type());
		System.out.println("report_writer_id : " + dto.getReport_writer_id());
		System.out.println("reported_person : " + dto.getReported_person());
		System.out.println("report_content : " + dto.getReport_content());
		service.report(dto);
	}

	// 게시글 등록 페이지로 이동
	@RequestMapping("/toInsertBoard")
	public String toInsertBoard() {
		// 게시글 저장 전에 upload 파일을 리스트에 쌓는 작업
		ArrayList<JsonObject> list = new ArrayList<>();
		session.setAttribute("fileList", list);
		return "board/insertBoard";
	}
	
	// 게시글 등록
	@RequestMapping("/insertBoard")
	public String insertBoard(BoardDTO dto, FileDTO fdto) throws Exception {
		
		// 파일 전체 리스트에 이미지 저장
		ArrayList<JsonObject> fileList = ((ArrayList<JsonObject>)session.getAttribute("fileList"));
		System.out.println("fileList 길이 : " + fileList.size());
		for(JsonObject obj : fileList) {
			System.out.println(obj);
		}
		// 비밀글 값 처리
		if(dto.getSecret() == null) {
			dto.setSecret("N");
		} else if (dto.getSecretPw() == null) {
			dto.setSecretPw(null);
		} else if (dto.getSecret() == "on") {
			dto.setSecret("Y");
		}
		
		// 게시글 등록후에 session에 있는 파일들 지워줌
		service.insertBoard(dto, fdto);
		session.removeAttribute("fileList");
		return "redirect:/board/toBoard.do?currentPage=1";
	}

	// 게시글 삭제
	@RequestMapping("/delete.do")
	public String delete(RedirectAttributes redirectAttributes, int board_seq) throws Exception {
		System.out.println("board_seq : " + board_seq);
		service.deleteBySeq(board_seq);

		return "redirect:/board/toBoard.do?currentPage=1";
	}

	// 게시글 수정
	@RequestMapping("/modify.do")
	public String modify(RedirectAttributes redirectAttributes, int board_seq, BoardDTO dto, FileDTO fdto) throws Exception {
		// 게시글 저장 전에 upload 파일을 리스트에 쌓는 작업
//		ArrayList<JsonObject> list = new ArrayList<>();
//		session.setAttribute("fileList", list);
		
		System.out.println("게시글 수정 BoardDTO : " + dto);
		
		service.modifyBySeq(board_seq, dto, fdto);
//		session.removeAttribute("fileList");

		redirectAttributes.addAttribute("board_seq", board_seq);
		return "redirect:/board/detailView.do";
	}

}
