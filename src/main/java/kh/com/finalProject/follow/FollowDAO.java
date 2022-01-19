package kh.com.finalProject.follow;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FollowDAO {
	
	@Autowired
	private SqlSession session;
	
	public FollowDAO() {
		System.out.println("FollowDAO 인스턴스 생성");
	}
	
	// 팔로우 체크
	public FollowDTO findFollow(Map<String, String> map) throws Exception {
		return session.selectOne("followMapper.findFollow", map);
	}
	
	// 팔로우가 DB에 저장 되어있는지 테크
	public FollowDTO checkFollow(FollowDTO dto) throws Exception {
		return session.selectOne("followMapper.checkFollow", dto);
	}
	
	// 팔로우 요청
	public int insertFollow(FollowDTO dto) throws Exception {
		return session.insert("followMapper.insertFollow", dto);
	}
	
	// 언팔로우
	public int deleteFollow(FollowDTO dto) throws Exception {
		return session.delete("followMapper.deleteFollow", dto);
	}
}
