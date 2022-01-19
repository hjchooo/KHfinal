package kh.com.finalProject.follow;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.com.finalProject.likes.LikesDTO;

@Controller
@RequestMapping("/follow")
public class FollowController {

	@Autowired
	private FollowService service;

	@Autowired
	private HttpSession session;

	public FollowController() {
		System.out.println("FollowService 인스턴스 생성");
	}

	// 팔로우 요청
	@RequestMapping("/insertFollow")
	@ResponseBody
	public int insertFollow(FollowDTO dto, Model model) throws Exception {
		int rs = service.insertFollow(dto);
		return rs;
	}

}
