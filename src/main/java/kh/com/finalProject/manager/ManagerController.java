package kh.com.finalProject.manager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.com.finalProject.board.BoardDTO;
import kh.com.finalProject.board.BoardService;
import kh.com.finalProject.member.MemberDTO;
import kh.com.finalProject.member.MemberService;
import kh.com.finalProject.publicdata.DataService;
import kh.com.finalProject.reply.ReplyService;
import kh.com.finalProject.visit.VisitService;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private BoardService bService;
	
//	@Autowired
//	private ReportService rService;
	
	@Autowired
	private ReplyService replyService;
	
	@Autowired
	private DataService dService;
	
	@Autowired
	private VisitService vService;
	
	// 관리자 main 페이지 이동
	@RequestMapping("/main.do")
	public String main(Model model) throws Exception{
		
		// 신규 가입자 조회
		List<MemberDTO> mlist = mService.dayMember();
		// 당일 추가 게시글 조회
		List<BoardDTO> blist = bService.dayBoard();
		// 공공데이터 갯수 조회
		List<Integer> publicdatalist =  new ArrayList<>();
		
		// 오늘 방문자 수
        int todayCount = vService.todayCount();
         
        // 전체 방문자 수
        int totalCount = vService.totalCount(); 
		
		publicdatalist.add(dService.countAll());
		publicdatalist.add(dService.countAllFestival());
		publicdatalist.add(dService.countAllLeports());
		
		
		
		
		System.out.println("mlist : " + mlist);
		System.out.println("blist : " + blist);
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("mlist", mlist);
		map.put("blist", blist);
		map.put("publicdatalist", publicdatalist);
		map.put("todayCount", todayCount);
		map.put("totalCount", totalCount);
		model.addAttribute("map", map);
		return "/manager/main";
	}
	
	// 회원 관리 페이지 이동
	@RequestMapping("/member.do")
	public String memeber(int currentPage, Model model) throws Exception{
		
		HashMap<String, Object> naviMap = mService.getMemberPageNavi(currentPage);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("currentPage", currentPage);
		return "/manager/member";
	}
	
	
	// 개시판 관리 페이지 이동
	@RequestMapping("/board.do")
	public String board() {
		return "/manager/board";
	}
	
	// 신고 관리 페이지 이동
	@RequestMapping("/report.do")
	public String report() {
		return "/manager/report";
	}
	
	// 댓글관리 페이지 이동
	@RequestMapping("/reply.do")
	public String reply() {
		return "/manager/reply";
	}
	
	// 회원 전체 조회
	@RequestMapping("/toMember.do")
	@ResponseBody()
	public List<MemberDTO> toMember(int currentPage) throws Exception {
		
		System.out.println("toMember.do 도착");
		List<MemberDTO> list = mService.mSelectAll(currentPage);
		System.out.println(list);
		
		return list;
	}
	
	// 회원 삭제
	@RequestMapping("/memberDelete.do")
	@ResponseBody()
	public String delete(String id) throws Exception {
		mService.delete(id);
		int rs = mService.delete(id);
		System.out.println(rs);
		if (rs == 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	
}
