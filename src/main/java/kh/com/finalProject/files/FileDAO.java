package kh.com.finalProject.files;

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
	
}
