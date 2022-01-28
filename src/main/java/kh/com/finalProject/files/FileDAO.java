package kh.com.finalProject.files;

import java.util.ArrayList;
import java.util.List;

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
	public List<FileDTO> selectAll(int board_seq) throws Exception{
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
}
