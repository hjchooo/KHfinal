package kh.com.finalProject.reply;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/reply")
public class ReplyController {

	@Autowired
	private ReplyService service;

	// 댓글 삭제
	@RequestMapping(value = "/deleteReply", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String deleteReply(int reply_seq) throws Exception {
		if (service.deleteReply(reply_seq) != -1) {
			return "성공";
		} else {
			return "실패";
		}
	}

	// 댓글 수정
	@RequestMapping(value = "/modifyReply", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String modifyReply(String re_content, int reply_seq) throws Exception {
		if (service.modifyReply(re_content, reply_seq) != -1) {
			return "성공";
		} else {
			return "실패";
		}
	}

	// 댓글 등록
	@RequestMapping(value = "/insertReply", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String insertReply(ReplyDTO dto) throws Exception {
		if (service.insertReply(dto) != -1) {
			return "성공";
		} else {
			return "실패";
		}
	}

	// 댓글 출력
	@RequestMapping("/getReplyList")
	@ResponseBody
	public Map<String, Object> getReplyList(int re_board_seq, int currentPage) throws Exception {
		Map<String, Object> map = new HashMap<>();
		List<ReplyDTO> replyList = service.selectAll(re_board_seq, currentPage);
		map.put("replyList", replyList);
		return map;
	}
}
