package kh.com.finalProject.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession session;

	public MemberDAO() {
		System.out.println("MemberDAO 인스턴스 생성");
	}

	// 로그인
	public int login(String id, String pw) throws Exception {
		System.out.println("dao id : " + id);
		System.out.println("dao pw : " + pw);
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pw", pw);
		return session.selectOne("memberMapper.login", map);
	}

	// 멤버 정보 id로 가져오기
	public MemberDTO getMember(String id) throws Exception {
		return session.selectOne("memberMapper.getMember", id);
	}

	// 회원가입
	public int insertMember(MemberDTO dto) throws Exception {
		return session.insert("memberMapper.insertMember", dto);
	}

	// ID 중복확인
	public int verifyID(String id) throws Exception {
		return session.selectOne("memberMapper.verifyID", id);
	}

	// Nickname 중복확인
	public int verifyNickname(String nickname) throws Exception {
		return session.selectOne("memberMapper.verifyNickname", nickname);
	}
	
	//	아이디 찾기
	public List<MemberDTO> findID(String email) throws Exception {
		return session.selectList("memberMapper.findID", email);
	}
	
	// 회원탈퇴
		public int delete(String id) throws Exception {
			return session.delete("memberMapper.delete", id);
		}

		// 회원정보 수정
		public int toModify(MemberDTO dto) throws Exception {
			System.out.println("toModify");
			return session.update("memberMapper.toModify", dto);
		}

		// 회원전체 조회
		public List<MemberDTO> selectAll() throws Exception {
			System.out.println("note dao 도착");
			return session.selectList("memberMapper.selectAll");
		}
}
