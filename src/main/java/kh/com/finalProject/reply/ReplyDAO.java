package kh.com.finalProject.reply;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAO {

	@Autowired
	private SqlSession session;
	
	// 댓글 삭제
	public int deleteReply(int reply_seq) throws Exception {
		System.out.println("댓글 삭제 DAO");
		return session.delete("replyMapper.deleteReply", reply_seq);
	}
	
	// 댓글 수정
	public int modifyReply(String re_content, int reply_seq) throws Exception {
		System.out.println("댓글 수정 DAO");
		Map<String, Object> map = new HashMap<>();
		map.put("re_content", re_content);
		map.put("reply_seq", reply_seq);
		return session.update("replyMapper.modifyReply", map);
	}
	
	// 댓글 등록
	public int insertReply(ReplyDTO dto) throws Exception{
		System.out.println("댓글 등록 DAO");
		return session.insert("replyMapper.insertReply", dto);
	}
	
	// 댓글 전체 조회
	public List<ReplyDTO> selectAll(int re_board_seq) throws Exception {
		return session.selectList("replyMapper.selectAll", re_board_seq);
	}
	
	// 댓글 정보 조회
	public ReplyDTO selectOne(int board_seq) throws Exception {
		return session.selectOne("replyMapper.selectOne", board_seq);
	}
	
	// 댓글 페이지네이션
	public List<ReplyDTO> getReplyPageList(int startRange, int endRange) throws Exception {
		System.out.println("ReplyDAO startRange: " + startRange);
		System.out.println("ReplyDAO endRange: " + endRange);
		Map<String, Object> map = new HashMap<>();
		map.put("startRange", startRange);
		map.put("endRange", endRange);
		return session.selectList("replyMapper.getReplyPageList", map);
	}
	
	// 댓글 총 개수
	public int countAll() throws Exception {
		return session.selectOne("replyMapper.countAll");
	}
}
