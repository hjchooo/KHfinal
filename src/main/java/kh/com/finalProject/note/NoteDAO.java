package kh.com.finalProject.note;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoteDAO {

	@Autowired
	private SqlSession session;
	
	//쪽지 갯수
	public int count_to_id(String to_id) {
		System.out.println("NoteDAO count 도착");
		System.out.println(to_id);
		int rs = session.selectOne("noteMapper.count_to_id", to_id);
		System.out.println(rs);
		return rs;
	}
	
	// 쪽지 보내기, 답장
	public int insert(NoteDTO dto) {
		System.out.println("NoteDAO 도착");
		return session.insert("noteMapper.insert", dto);
	}
	
	// 사용자에게 온 쪽지 조회
	public List<NoteDTO> select_to_id(int startRange,int endRange, String to_id) {
		System.out.println("NoteDAO 도착");
		Map<String, Object> map = new HashMap<>();
		map.put("to_id", to_id);
		map.put("startRange", startRange);
		map.put("endRange", endRange);
		return session.selectList("noteMapper.select_to_id", map);
	}
	// 쪽지 삭제
	public int deleteNote(int note_seq) {
		System.out.println("NoteDAO 도착");
		return session.delete("noteMapper.deleteNote", note_seq);
	}
}
