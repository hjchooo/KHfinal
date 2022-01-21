package kh.com.finalProject.board;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		
		System.out.println("게시판으로!");
		
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
		return "/board/freeBoard";
	}
	
	// 게시판 최신순으로 보기
		@RequestMapping("/orderByNew.do")
		public String orderByNew() throws Exception{
			return "redirect:/board/toBoard.do?currentPage=1";
		}
		
		// 게시판 인기순으로 보기
		@RequestMapping("/orderByPopular.do")
		public String orderByPopular(Model model, String popular, int currentPage) throws Exception{
			System.out.println("인기순으로!");
			System.out.println("popular : " + popular);
			System.out.println("currentPage : " + currentPage);
			HashMap<String, Object> naviMap = service.getPageNavi(currentPage);
			List<BoardDTO> list = service.orderByPopular(popular, currentPage);
			model.addAttribute("naviMap", naviMap);
			model.addAttribute("list", list);
			return "/board/freeBoard";
		}
	
	// 게시판 리스트 조건 별로 가져오기
	@RequestMapping("/toBoardOption.do")
	public String toBoardOption(Model model, String selectOption, int currentPage) throws Exception {
		System.out.println("selectOption : " + selectOption);
		System.out.println("currentPage : " + currentPage);
		System.out.println("게시판으로!(조건별로)");
		HashMap<String, Object> naviMap = service.getPageNavi(currentPage);
		List<BoardDTO> list = service.selectAllOption(selectOption, (int) naviMap.get("currentPage"));
		for (BoardDTO dto : list) {
			System.out.println(dto);
		}
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		return "/board/boardList";
	}

	// 게시글 상세조회
	@RequestMapping("/detailView.do")
	public String detailView(@RequestParam("board_seq") int boardSeq, Model model, int board_seq, String likes_id, String follow_id,
			int currentPage) throws Exception {

		BoardDTO dto = service.selectOne(board_seq);
		
		// 로그인 아이디
		String writer_id = ((MemberDTO) session.getAttribute("loginSession")).getId();
		
		System.out.println("상세보기!");
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
		return "/board/detailView";
	}

	// 게시글 검색
	@RequestMapping("/searchProc.do")
	public String searchProc(Model model, String searchType, String keyword, int currentPage) throws Exception {
		
		System.out.println("게시판 검색!");
		System.out.println("select : " + searchType);
		System.out.println("keyword : " + keyword);
		System.out.println("currentPage : " + currentPage);
		HashMap<String, Object> naviMap = service.getPageNavi2(searchType, keyword, currentPage);
		List<BoardDTO> list = service.searchBoard(searchType, keyword, (int) naviMap.get("currentPage"));
		for (BoardDTO dto : list) {
			System.out.println(dto);
		}
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		return "/board/freeBoard";
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
		return "board/insertBoard";
	}

	// 게시글 등록
	@RequestMapping("/insertBoard")
	public String insertBoard(BoardDTO dto) throws Exception {
		
		System.out.println(dto);
		
		// 저장 경로 확인하기 -> 경로 sysout 하면 나옴
		String realPath = session.getServletContext().getRealPath("upload");
		service.insertBoard(dto);
		return "redirect:/board/toBoard.do?currentPage=1";
	}

	// 게시글 삭제
	@RequestMapping("/delete.do")
	public String delete(RedirectAttributes redirectAttributes, int board_seq) throws Exception {
		System.out.println("board_seq : " + board_seq);
		service.deleteBySeq(board_seq);

		return "board/toBoard.do?currentPage=1";
	}

	// 게시글 수정
	@RequestMapping("/modify.do")
	public String modify(RedirectAttributes redirectAttributes, BoardDTO dto) throws Exception {
		System.out.println("dto : " + dto);
		service.modifyBySeq(dto);

		int board_seq = dto.getBoard_seq();
		redirectAttributes.addAttribute("board_seq", board_seq);
		return "redirect:/board/detailView.do";
	}

}
