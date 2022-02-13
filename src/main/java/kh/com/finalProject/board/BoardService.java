package kh.com.finalProject.board;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonObject;

import kh.com.finalProject.files.FileDAO;
import kh.com.finalProject.files.FileDTO;
import kh.com.finalProject.report.ReportDTO;

@Service
public class BoardService {

   @Autowired
   private BoardDAO dao;

   @Autowired
   private FileDAO fdao;

   @Autowired
   private HttpSession session;

   public BoardService() {
   }

   private int recordCntPerPage = 10;
   private int naviCntPerPage = 10;

   // 전체 게시판 조회
   public List<BoardDTO> selectAll(int currentPage) throws Exception {
      int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
      int endRange = currentPage * recordCntPerPage;

      // 전체 게시판 조회
      List<BoardDTO> list = dao.selectAll(startRange, endRange);

      return list;
   }

   // 전체 게시판 게시글 갯수
   public int selectAllBoardCount() throws Exception {
      return dao.selectAllBoardCount();
   }

   // 게시판 조건별로 가져오기
   public List<BoardDTO> selectAllOption(String selectOption, int currentPage) throws Exception {
      int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
      int endRange = currentPage * recordCntPerPage;
      List<BoardDTO> list = dao.selectAllOption(selectOption, startRange, endRange);
      return list;
   }

   // 게시글 상세조회
   public BoardDTO selectOne(int board_seq) throws Exception {
      // 조회수 +1
      dao.updateView_count(board_seq);
      return dao.selectOne(board_seq);
   }

   // 게시판 페이징
   public HashMap<String, Object> getPageNavi(int recordTotalCnt, int currentPage) throws Exception {

      int pageTotalCnt = 0;
      if (recordTotalCnt % recordCntPerPage > 0) {
         pageTotalCnt = (recordTotalCnt / recordCntPerPage) + 1;
      } else {
         pageTotalCnt = recordTotalCnt / recordCntPerPage;
      }

      if (currentPage < 1) {
         currentPage = 1;
      } else if (currentPage > pageTotalCnt) {
         currentPage = pageTotalCnt;
      }

      int startNavi = ((currentPage - 1) / naviCntPerPage) * naviCntPerPage + 1;
      int endNavi = startNavi + naviCntPerPage - 1;
      if (endNavi > pageTotalCnt) {
         endNavi = pageTotalCnt;
      }

      boolean needPrev = true;
      boolean needNext = true;
      if (startNavi == 1)
         needPrev = false;
      if (endNavi == pageTotalCnt)
         needNext = false;

      HashMap<String, Object> map = new HashMap<>();
      map.put("startNavi", startNavi);
      map.put("endNavi", endNavi);
      map.put("needPrev", needPrev);
      map.put("needNext", needNext);
      map.put("currentPage", currentPage);

      return map;
   }

   // 게시글 조회수+1
   public int updateView_count(int board_seq) throws Exception {
      return dao.updateView_count(board_seq);
   }

   // 게시판 검색
   public List<BoardDTO> searchBoard(String select, String keyword, int currentPage) throws Exception {
      int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
      int endRange = currentPage * recordCntPerPage;
      List<BoardDTO> list = dao.searchBoard(select, keyword, startRange, endRange);
      return list;
   }

   // 게시판 검색 후 select, keyword 로 게시글 카운트
   public int countAllOption(String select, String keyword) throws Exception {
      return dao.countAllOption(select, keyword);
   }

   // 게시글 등록
   public int insertBoard(BoardDTO dto, FileDTO fdto) throws Exception {
      int board_seq = dao.selectSeq();

      // 게시글 등록
      dto.setBoard_seq(board_seq); // 게시글에 게시글 번호 셋팅
      int rs = dao.insertBoard(dto);

      // 파일 등록
      ArrayList<JsonObject> fileList = ((ArrayList<JsonObject>) session.getAttribute("fileList"));

      if (fdto.getOri_name() == null && fdto.getSys_name() == null) {
         for (JsonObject obj : fileList) {
            fdto.setBoard_seq(board_seq);
            fdto.setOri_name(obj.get("ori_name").getAsString());
            fdto.setSys_name(obj.get("sys_name").getAsString());
            fdao.insertFile(fdto);
         }
      }

      return 0;

   }

   // 게시글 seq 연동
   public int selectSeq() throws Exception {
      return dao.selectSeq();
   }

   // 게시글 신고
   public int report(ReportDTO dto) throws Exception {
      return dao.report(dto);
   }

   // 게시글 삭제
   public int deleteBySeq(int board_seq) throws Exception {
      return dao.deleteBySeq(board_seq);
   }

   // 게시글 수정
   public int modifyBySeq(int board_seq, BoardDTO dto, FileDTO fdto, String[] sys_name) throws Exception {
      // 파일 등록
//      System.out.println("boardService 게시글 수정 도착");
//      System.out.println("==boardService 게시글 수정==board_seq : " + board_seq);
//      System.out.println("==boardService 게시글 수정==boardDTO : " + dto);
//      System.out.println("==boardService 게시글 수정==FileDTO : " + fdto);

//      for(int i=0; i<sys_name.length; i++) {
//         System.out.println("sys_name 배열 : " + sys_name[i]);
//         
//      }
      String realPath = session.getServletContext().getRealPath("/upload");
      System.out.println("파일 게시글 번호 : " + fdto.getBoard_seq());
      // 게시글 수정
      dao.modifyBySeq(dto);

      // 추가 파일 등록
      ArrayList<JsonObject> fileList = ((ArrayList<JsonObject>) session.getAttribute("fileList"));
      if (fileList != null) {
         for (JsonObject obj : fileList) {
            fdto.setBoard_seq(board_seq);
            fdto.setOri_name(obj.get("ori_name").getAsString());
            fdto.setSys_name(obj.get("sys_name").getAsString());
            fdao.insertFile(fdto);
         }
      }

      // 현재 파일과 없는 파일 조회
      for (int i = 0; i < sys_name.length; i++) {
         System.out.println("보드서비스 sys_name 배열 : " + sys_name[i]);
      }

      // 파일 삭제
      dto.setBoard_seq(board_seq);
      List<String> notMatch = fdao.notMatchSys_name(board_seq, sys_name);
      Map<String, Object> map = new HashMap<>();
      map.put("notMatch", notMatch);
      
      System.out.println("map : " + map);
      
      System.out.println("map 안의 밸류 값 : " + map.get("notMatch").toString());
      
      if (sys_name.length != notMatch.size()) {
         System.out.println("sys_name.length : " + sys_name.length);
         System.out.println("notMatch.size : " + notMatch.size());
//         for (int i = 0; i < notMatch.size(); i++) {
//            System.out.println("안맞는 sys_name : " + notMatch.get(i).toString());
//         }
         
         // DB에서 삭제
         fdao.deleteFromSys_name(map);
            
         // upload 파일에서 삭제
         System.out.println("upload경로 : " + realPath);
         File file = new File(realPath, map.get("notMatch").toString());
         file.delete();
            
            

      }

//      System.out.println("BoardService 게시글 등록 도착");
//      System.out.println("게시글 수정(boardService) : " + board_seq);

      fdto.setBoard_seq(board_seq);

//      // board_seq 로 ori_name 검색
//      List<String> modifyOri_name = (ArrayList<String>) fdao.selectOri_name(board_seq);
//
//      // board_seq 로 sys_name 검색
//      List<String> modifySys_name = (ArrayList<String>) fdao.selectSys_name(board_seq);
//
//      System.out.println("board_seq : " + fdto.getBoard_seq());
//
//      // 파일이 null 이라면
//      if (fdto.getOri_name() == null && fdto.getSys_name() == null) {
//         for (String mdOri : modifyOri_name) {
//            fdto.setOri_name(mdOri);
//            System.out.println("mdOri : " + mdOri);
//
//         }
//         for (String mdSys : modifySys_name) {
//            fdto.setOri_name(mdSys);
//            System.out.println("mdSys : " + mdSys);
//         }
//
//         for (int i = 0; i < modifyOri_name.size(); i++) {
//            fdao.modifyFile(fdto);
//
//         }
//
//      } else if (fdto.getOri_name() != null && fdto.getSys_name() != null) {
//         System.out.println("fileList 길이 : " + fileList.size());
//         for (JsonObject obj : fileList) {
//
//            fdto.setOri_name(obj.get("ori_name").getAsString());
//            System.out.println("fdto.setOri_name : " + fdto.getOri_name());
//
//            fdto.setSys_name(obj.get("sys_name").getAsString());
//            System.out.println("fdto.setSys_name : " + fdto.getSys_name());
//            fdao.modifyFile(fdto);
//         }
//      } else if (dto.getContent() == null) {
//         dto.setContent(dao.selectContent(board_seq));
//         System.out.println("dto.getContent : " + dto.getContent());
//      }
      return 0;
   }

   // 비밀글 비밀번호 찾기
   public boolean secretBoard(String secretPw, int board_seq) throws Exception {
      if (dao.secretBoard(secretPw, board_seq) == 1) {
         return true;
      } else {
         return false;
      }
   }

   // 자류게시판 리스트 가져오기
   public List<BoardDTO> selectFreeBoard(String category, int currentPage) throws Exception {
      int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
      int endRange = currentPage * recordCntPerPage;
      // 자유게시판 전체 조회
      List<BoardDTO> list = dao.selectFreeBoard(category, startRange, endRange);
      return list;
   }

   // 자유게시판 게시글 갯수
   public int countFreeBoard(String category) throws Exception {
      return dao.countFreeBoard(category);
   }

   // 국내여행 리스트 가져오기
   public List<BoardDTO> selectDomestic(String category, int currentPage) throws Exception {
      int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
      int endRange = currentPage * recordCntPerPage;
      // 국내여행 전체 조회
      List<BoardDTO> list = dao.selectDomestic(category, startRange, endRange);
      return list;
   }

   // 국내여행 게시글 갯수
   public int countDomestic(String category) throws Exception {
      return dao.countDomestic(category);
   }

   // 축제정보 리스트 가져오기
   public List<BoardDTO> selectFestival(String category, int currentPage) throws Exception {
      int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
      int endRange = currentPage * recordCntPerPage;
      // 축제정보 전체 조회
      List<BoardDTO> list = dao.selectFestival(category, startRange, endRange);
      return list;
   }

   // 축제정보 게시글 갯수
   public int countFestival(String category) throws Exception {
      return dao.countFestival(category);
   }

   // 레포츠로 리스트 가져오기
   public List<BoardDTO> selectReports(String category, int currentPage) throws Exception {
      int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
      int endRange = currentPage * recordCntPerPage;
      // 레포츠 전체 조회
      List<BoardDTO> list = dao.selectReports(category, startRange, endRange);
      return list;
   }

   // 레포츠 게시글 갯수
   public int countReports(String category) throws Exception {
      return dao.countReports(category);
   }

   // 당일 신규 게시글 조회
   public List<BoardDTO> dayBoard() throws Exception {
      return dao.dayBoard();
   }

   // 마이페이지 게시글
   public List<BoardDTO> myBoardList(String writer_id, int currentPage) throws Exception {
      int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
      int endRange = currentPage * recordCntPerPage;

      // 전체 게시판 조회
      List<BoardDTO> list = dao.myBoardList(writer_id, startRange, endRange);

      return list;
   }

   // 마이페이지 게시글 갯수
   public int countMyBoardList(String writer_id) throws Exception {
      return dao.countMyBoardList(writer_id);
   }
}