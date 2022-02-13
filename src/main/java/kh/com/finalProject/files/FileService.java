package kh.com.finalProject.files;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

import kh.com.finalProject.board.BoardDAO;

@Service
public class FileService {

   @Autowired
   private FileDAO dao;

   @Autowired
   BoardDAO boardDAO;

   @Autowired
   HttpSession session;

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

   // 썸머노트 이미지 업로드(매개변수로 실제저장경로(realPath), 파일저장하는 MultipartFile객체)
   public JsonObject SummerNoteImageFile(String realPath, MultipartFile file) throws Exception {
      // JsonObject 선언
      JsonObject jsonObject = new JsonObject();

      File filePath = new File(realPath);
      // 저장 경로가 없으면 파일을 만들어 주는 작업
      if (!filePath.exists())
         filePath.mkdir();

      if (!file.isEmpty()) { // 파일이 비어 있지 않다면
         String ori_name = file.getOriginalFilename();

         // 파일 복사후 저장 UUID : 랜덤 이름 저장
         String sys_name = UUID.randomUUID() + "_" + ori_name;

         File targetFile = new File(realPath + sys_name);
         try {
            InputStream fileStream = file.getInputStream();
            FileUtils.copyInputStreamToFile(fileStream, targetFile);

            // separator : 윈도우마다 저장 다를때 써주는 메서드
            file.transferTo(new File(realPath + File.separator + sys_name));

            // path: 저장경로 키값, /upload파일로 sys_name 저장
            jsonObject.addProperty("path", "/upload" + File.separator + sys_name);

            // addProperty로 sys_name 저장
            jsonObject.addProperty("sys_name", sys_name);

            // addProperty로 ori_name 저장
            jsonObject.addProperty("ori_name", ori_name);

            // JsonObject형 배열 생성
            ((ArrayList<JsonObject>) session.getAttribute("fileList")).add(jsonObject);

         } catch (Exception e) {
            e.printStackTrace();
            FileUtils.deleteQuietly(targetFile); // 저장된 파일 삭제
            jsonObject.addProperty("responseCode", "error");
         }
      }
      return jsonObject;
   }

}