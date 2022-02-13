package kh.com.finalProject.files;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FileDAO {

   @Autowired
   private SqlSession session;

   // 파일 등록
   public int insertFile(FileDTO dto) throws Exception {
      return session.insert("fileMapper.insertFile", dto);
   }

   // 파일 불러오기
   public List<FileDTO> selectAll(int board_seq) throws Exception {
      return session.selectList("fileMapper.selectAll", board_seq);
   }

   // 파일 수정
   public int modifyFile(FileDTO dto) throws Exception {
      return session.update("fileMapper.modifyFile", dto);
   }

   // 파일 seq 찾기
   public List<Object> selectFileSeq(int board_seq) throws Exception {
      return session.selectOne("fileMapper.selectFileSeq", board_seq);
   }

   // 파일 ori_name 불러오기
   public List<String> selectOri_name(int board_seq) throws Exception {
      return session.selectList("fileMapper.selectOri_name", board_seq);
   }

   // 파일 sys_name 불러오기
   public List<String> selectSys_name(int board_seq) throws Exception {
      return session.selectList("fileMapper.selectSys_name", board_seq);
   }

   // DB sys_name 매칭
   public List<String> notMatchSys_name(int board_seq, String[] sys_name) throws Exception {
      Map<String, Object> map = new HashMap<>();
      map.put("board_seq", board_seq);
      map.put("sys_name", sys_name);
      
      for(int i=0; i<sys_name.length; i++) {
         System.out.println("dao 배열 : " + sys_name[i]);
      }
      return session.selectList("fileMapper.notMatchSys_name", map);
   }
   
   // 추가 파일 등록
   public int addFile(FileDTO dto) throws Exception {
      return session.insert("fileMapper.addFile", dto);
   }
   
   // 파일 삭제
   public int deleteFromSys_name(Map<String, Object> map) throws Exception {
      System.out.println("=====dao map 안의 밸류 값 : " + map.get("notMatch").toString());
      map.put("sys_name", map.get("notMatch").toString());
      return session.delete("fileMapper.deleteFromSys_name", map);
   }

}