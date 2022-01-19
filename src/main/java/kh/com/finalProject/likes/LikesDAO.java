package kh.com.finalProject.likes;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LikesDAO {
	
	@Autowired
	private SqlSession session;
	
	public LikesDAO() {
		System.out.println("LikesDAO 인스턴스 생성");
	}
	
	// 좋아요 체크
	public LikesDTO findLikes(Map<String, Object> map) {
		return session.selectOne("likesMapper.findLikes",map);
	}
	
	// 좋아요가 DB에 있는지 확인
	public LikesDTO findHeart(LikesDTO dto) {
		return session.selectOne("likesMapper.findLikes",dto);
	}

	// 좋아요 정보(likes 테이블에 게시글 번호, 회원 아이디) 저장
	public int insertLikes(LikesDTO dto) {
		return session.insert("likesMapper.insertLikes", dto);
	}

	// 좋아요 삭제
	public void deleteHeart(LikesDTO dto) {
		session.delete("likesMapper.deleteLikes",dto);
	}
}
