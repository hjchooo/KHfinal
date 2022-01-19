package kh.com.finalProject.likes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/likes")
public class LikesController {

	@Autowired
	private LikesService service;
	
	public LikesController() {
		System.out.println("LikesController 인스턴스 생성");
	}
	
	@RequestMapping("/insertLikes")
	@ResponseBody
	public int heart(Model model, LikesDTO dto) {
		int rs = service.insertLikes(dto);
		return rs;
	}
	
	
}
