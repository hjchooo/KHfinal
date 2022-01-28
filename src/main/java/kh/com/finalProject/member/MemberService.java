package kh.com.finalProject.member;

import java.util.List;

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

	//	비밀번호 찾기 시 아이디 존재여부 확인
	public boolean existID(String id) throws Exception {
		if (dao.existID(id) == 1) {

			return true;
		} else {

			return false;
		}
	}

	//	비밀번호 찾기 시 이메일 존재여부 확인
	public boolean existEmail(String email) throws Exception {
		if (dao.existEmail(email) == 1) {

			return true;
		} else {

			return false;
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

	//	이메일 중복검사
	public boolean verifyEmail(String email) throws Exception {
		if (dao.verifyEmail(email) == 1) {

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

	// 아이디 찾기
	public List<MemberDTO> findID(String email) throws Exception {

		return dao.findID(email);
	}

	// 회원 탈퇴
	public int delete(String id) throws Exception {
		return dao.delete(id);
	}

	// 회원정보 수정
	public int toModify(MemberDTO dto) throws Exception {
		System.out.println("toModify");
		return dao.toModify(dto);
	}

	// 회원전체 조회
	public List<MemberDTO> selectAll() throws Exception {
		System.out.println("note 팝업 service 도착");
		return dao.selectAll();
	}
}
