package kh.com.finalProject.manager;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.com.finalProject.board.BoardService;
import kh.com.finalProject.member.MemberDTO;
import kh.com.finalProject.member.MemberService;
import kh.com.finalProject.reply.ReplyService;
import kh.com.finalProject.report.ReportService;

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

	@RequestMapping("/main.do")
	public String main() {
		return "/manager/main";
	}

	@RequestMapping("/member.do")
	public String memeber(int currentPage, Model model) throws Exception {

		HashMap<String, Object> naviMap = mService.getMemberPageNavi(currentPage);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("currentPage", currentPage);
		return "/manager/member";
	}

	@RequestMapping("/board.do")
	public String board() {
		return "/manager/board";
	}

	@RequestMapping("/report.do")
	public String report() {
		return "/manager/report";
	}

	@RequestMapping("/reply.do")
	public String reply() {
		return "/manager/reply";
	}

	@RequestMapping("/toMember.do")
	@ResponseBody()
	public List<MemberDTO> toMember(int currentPage) throws Exception {

		System.out.println("toMember.do 도착");
		List<MemberDTO> list = mService.mSelectAll(currentPage);
		System.out.println(list);

		return list;
	}

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
