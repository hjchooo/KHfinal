package kh.com.finalProject.note;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.com.finalProject.follow.FollowDTO;
import kh.com.finalProject.follow.FollowService;
import kh.com.finalProject.member.MemberDTO;

@Controller
@RequestMapping("/note")
public class NoteController {

	public static int count;

	@Autowired
	private NoteService service;
	
	@Autowired 
	private FollowService fService;

	@Autowired
	private HttpSession session;
	
	// 쪽지 보내기
	@RequestMapping(value = "/note.do")
	@ResponseBody()
	public String note(NoteDTO dto, Model model, String id) throws Exception {
		System.out.println("noteController 도착");
		id = ((MemberDTO) session.getAttribute("loginSession")).getId();
		
		List<FollowDTO> list = fService.follower(id);
		List<FollowDTO> list2 = fService.follow(id);
		model.addAttribute("dto", dto);
		model.addAttribute("fList", list);
		model.addAttribute("f2List", list2);
		int rs = service.insert(dto);
		if (rs != 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	// 쪽지 조회
	@RequestMapping(value = "/select_to_id.do")
	public String select_to_id(int currentPage, String to_id, Model model) throws Exception {
		System.out.println("noteController noteList 도착");

		HashMap<String, Object> naviMap = service.getNotePageNavi(currentPage, to_id);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("currentPage", currentPage);
		return "note/noteList";
	}

	// 쪽지 조회 리스트
	@RequestMapping("/getNoteList.do")
	@ResponseBody()
	public Map<String, Object> getNoteList(int currentPage, String to_id) throws Exception {
		System.out.println("noteController 쪽지 조회 리스트 도착");
		System.out.println("to_id : " + to_id);
		Map<String, Object> map = new HashMap<>();
		List<NoteDTO> list = service.select_to_id(currentPage, to_id);
//		HashMap<String, Object> naviMap = service.getNotePageNavi(currentPage, to_id);
		System.out.println(list);
		map.put("list", list);
//		map.put("naviMap", naviMap);

		return map;
	}

	// 쪽지 삭제
	@RequestMapping("/deleteNote.do")
	@ResponseBody()
	public String deleteNote(int note_seq) throws Exception {
		int rs = service.deleteNote(note_seq);
		if (rs != 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	// 답장 메서드
	@RequestMapping("/reply.do")
	public String reply(String from_id, String to_id, Model model) {
		System.out.println("도착");
		Map<String, String> map = new HashMap<>();
		map.put("from_id", from_id);
		map.put("to_id", to_id);

		model.addAttribute("map", map);

		return "/note/noteReply";
	}

	// 쪽지 알림
	@RequestMapping(value = "/noteCount.do")
	@ResponseBody()
	public String noteCount(String to_id) throws Exception {

		if (count == 0) {
			count = service.noteCount(to_id);
		}
		System.out.println("입력 전 count : " + count);
		int count2 = service.noteCount(to_id);
		System.out.println("count2 : " + count2);
		if (count < count2) {
			count = count2;
			System.out.println("입력 후 count : " + count);
			return "plus";
		} else {
			return "not plus";
		}
	}

	// checkBox 이용한 note 삭제
	@RequestMapping("/checkDeleteNote.do")
	@ResponseBody()
	public String checkDeleteNote(@RequestParam(value = "arrCheck[]") List<Integer> arrCheck) throws Exception {
		System.out.println("도착");
		System.out.println(arrCheck);
		int rs = 0;
		for (int note_seq : arrCheck) {
			rs += service.deleteNote(note_seq);
		}
		System.out.println(rs);
		if (rs != 0) {
			System.out.println("c");
			return "success";
		} else {
			System.out.println("a");
			return "fail";
		}

	}
}
