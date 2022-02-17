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

	// 로그인 (일반)
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

	// Email 중복확인
	public int verifyEmail(String email) throws Exception {
		return session.selectOne("memberMapper.verifyEmail", email);
	}

	// 아이디 찾기
	public List<MemberDTO> findID(String email) throws Exception {
		return session.selectList("memberMapper.findID", email);
	}

	// 아이디 존재여부
	public int existID(String id) throws Exception {
		return session.selectOne("memberMapper.existID", id);
	}

	// 이메일 존재 유무
	public int existEmail(String email) throws Exception {
		return session.selectOne("memberMapper.existEmail", email);
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

	// 관리자용 회원전체 조회
	public List<MemberDTO> mSelectAll(int startRange, int endRange) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("startRange", startRange);
		map.put("endRange", endRange);
		return session.selectList("memberMapper.mSelectAll", map);
	}

	//
	public int countAll() {
		System.out.println("MemeberDAO count 도착");
		int rs = session.selectOne("memberMapper.countAll");
		System.out.println(rs);
		return rs;
	}

	// 오늘 가입한 회원조회
	public List<MemberDTO> dayMember(int startRange, int endRange) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("startRange", startRange);
		map.put("endRange", endRange);
		return session.selectList("memberMapper.dayMember", map);
	}
	
	// 오늘 가입한 회원 수
	public int countDayMember() throws Exception{
		return session.selectOne("memberMapper.countDayMember");
	}

	/* =================================== 수정 ================================= */

	// 아이디에 해당하는 이메일 찾기
	public String matchEmail(String id) throws Exception {
		return session.selectOne("memberMapper.matchEmail", id);
	}

	// 임시비밀번호로 덮어씌우기
	public int resetPW(MemberDTO dto) throws Exception {
		return session.update("memberMapper.resetPW", dto);
	}

	// 무시해도 됨 (확인 차에 해봄)
	public String originPW(String id) throws Exception {
		return session.selectOne("memberMapper.originPW", id);
	}

}
