package kh.com.finalProject.likes;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LikesService {

	@Autowired
	private LikesDAO dao;

	public LikesService() {
		System.out.println("LikesService 인스턴스 생성");
	}

	// 좋아요 체크
	public LikesDTO findLikes(int board_seq, String likes_id) throws Exception {
		// 2개의 parameter를 보내기 위해 Map 선언 및 Map에 데이터 삽입
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_seq", board_seq);
		map.put("likes_id", likes_id);
		return dao.findLikes(map);
	}

	// 좋아요 추가
	public int insertLikes(LikesDTO dto) {
		// 좋아요가 DB에 저장이 되는것이 없으면 0이 그대로 리턴으로 넘어감
		int rs = 0;
		// 좋아요가 이미 있는지 확인하는 코드
		LikesDTO find = dao.findHeart(dto);

		// find가 null이면 좋아요가 없는 상태이므로 정보 저장
		// find가 null이 아니면 좋아요가 있는 상태이므로 정보 삭제
		if (find == null) {
			// insert의 리턴값은 DB에 성공적으로 insert된 갯수를 보내므로 result가 1이 됨
			rs = dao.insertLikes(dto);
		} else {
			dao.deleteHeart(dto);
		}
		// 0 or 1이 담겨져서 @Controller에 보냄.
		return rs;
	}
	
}
