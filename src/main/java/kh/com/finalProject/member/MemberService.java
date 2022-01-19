package kh.com.finalProject.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;

	public MemberService() {
		System.out.println("MemberService 인스턴스 생성");
	}

	// 로그인
	public boolean login(String id, String pw) throws Exception {
		System.out.println("service id : " + id);
		System.out.println("service pw : " + pw);
		if (dao.login(id, pw) == 1) {
			return true;
		} else {
			return false;
		}
	}

	// 멤버 정보 id로 가져오기
	public MemberDTO getMember(String id) throws Exception {
		return dao.getMember(id);
	}

	// ID 중복검사
	// 중복검사 메서드는 dao안에 있음
	public boolean verifyID(String id) throws Exception {
		if (dao.verifyID(id) == 1) { // 중복 아이디면
			return false; // false
		} else { // 중복 아이디가 아니라면
			return true; // true
		}
	}

	// Nickname 중복검사
	// 중복검사 메서드는 dao안에 있음
	public boolean verifyNickname(String nickname) throws Exception {
		if (dao.verifyNickname(nickname) == 1) {
			return false;
		} else {
			return true;
		}
	}

	// 회원가입
	public int insertMember(MemberDTO dto) throws Exception {
		System.out.println("MemberService 회원가입");
		return dao.insertMember(dto);
	}
}
