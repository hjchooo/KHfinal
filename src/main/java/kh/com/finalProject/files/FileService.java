package kh.com.finalProject.files;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

@Service
public class FileService {

	@Autowired
	private FileDAO dao;

	public FileService() {
		System.out.println("FileService 인스턴스 생성");
	}

	// 파일 등록
	public int insertFile(FileDTO dto) throws Exception {
		return dao.insertFile(dto);
	}

	// 파일 리스트 불러오기
	public List<FileDTO> selectAll(int board_seq) throws Exception {
		return dao.selectAll(board_seq);
	}
	
	// 썸머노트 이미지 업로드
	public JsonObject SummerNoteImageFile(String realPath, MultipartFile file) throws Exception {
		JsonObject jsonObject = new JsonObject();

		File filePath = new File(realPath);
		if (!filePath.exists())
			filePath.mkdir();

		if (!file.isEmpty()) { // 파일이 비어 있지 않다면
			String ori_name = file.getOriginalFilename();

			// 파일 복사후 저장 UUID : 랜덤 이름 저장
			String sys_name = UUID.randomUUID() + "_" + ori_name;

			// separator : 윈도우마다 저장 다를때 써주는 메서드
			file.transferTo(new File(realPath + File.separator + sys_name));
			jsonObject.addProperty("path", "/upload" + File.separator + sys_name);
			jsonObject.addProperty("sys_name", sys_name);
			jsonObject.addProperty("ori_name", ori_name);
		}
		return jsonObject;
	}
}
