package kh.com.finalProject.files;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

@Controller
@RequestMapping("/files")
public class FileController {
	@Autowired
	private HttpSession session;

	public FileController() {
		System.out.println("FileController 인스턴스 생성");
	}
	
	@Autowired
	private FileService service;
	
	@RequestMapping(value="SummerNoteImageFile", produces="application/json;charset=UTF-8")
	@ResponseBody
	public String SummerNoteImageFile(MultipartFile file) throws Exception{
		String realPath = session.getServletContext().getRealPath("/upload");
		
		JsonObject jsonObject = service.SummerNoteImageFile(realPath, file);
		System.out.println(jsonObject);
		return jsonObject.toString();
	}
	



	

}
