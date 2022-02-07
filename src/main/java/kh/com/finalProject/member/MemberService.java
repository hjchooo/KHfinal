package kh.com.finalProject.member;

import java.util.HashMap;
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

	private int recordCntPerPage = 10; // 한페이지에 보여질 갯수
	private int naviCntPerPage = 10; // 페이지 갯수(1~10, 11~20, 21~30) 10개씩

//	// 로그인
//	public boolean login(String id, String pw) throws Exception {
//		if (dao.login(id, pw) == 1) {
//			return true;
//		} else {
//			return false;
//		}
//	}
//
//	// 멤버 정보 id로 가져오기
//	public MemberDTO getMember(String id) throws Exception {
//		return dao.getMember(id);
//	}
//
//	// ID 중복검사
//	// 중복검사 메서드는 dao안에 있음
//	public boolean verifyID(String id) throws Exception {
//		if (dao.verifyID(id) == 1) { // 중복 아이디면
//			return false; // false
//		} else { // 중복 아이디가 아니라면
//			return true; // true
//		}
//	}
//
//	//	비밀번호 찾기 시 아이디 존재여부 확인
//	public boolean existID(String id) throws Exception {
//		if (dao.existID(id) == 1) {
//
//			return true;
//		} else {
//
//			return false;
//		}
//	}
//
//	//	비밀번호 찾기 시 이메일 존재여부 확인
//	public boolean existEmail(String email) throws Exception {
//		if (dao.existEmail(email) == 1) {
//
//			return true;
//		} else {
//
//			return false;
//		}
//	}
//
//	// Nickname 중복검사
//	// 중복검사 메서드는 dao안에 있음
//	public boolean verifyNickname(String nickname) throws Exception {
//		if (dao.verifyNickname(nickname) == 1) {
//			return false;
//		} else {
//			return true;
//		}
//	}
//
//	//	이메일 중복검사
//	public boolean verifyEmail(String email) throws Exception {
//		if (dao.verifyEmail(email) == 1) {
//
//			return false;
//		} else {
//
//			return true;
//		}
//	}
//
//	// 회원가입
//	public int insertMember(MemberDTO dto) throws Exception {
//		System.out.println("MemberService 회원가입");
//		return dao.insertMember(dto);
//	}
//
//	// 아이디 찾기
//	public List<MemberDTO> findID(String email) throws Exception {
//
//		return dao.findID(email);
//	}
//
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

	public List<MemberDTO> mSelectAll(int currentPage) throws Exception {
		System.out.println("memberService mSelectAll 도착");

		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		return dao.mSelectAll(startRange, endRange);
	}

	public HashMap<String, Object> getMemberPageNavi(int currentPage) throws Exception {
		System.out.println("ReplyService CurrentPage : " + currentPage);
		int recordTotalCnt = dao.countAll(); // 사용자에게 보낸 쪽지 조회
		System.out.println("recordTotalCnt : " + recordTotalCnt);

		int pageTotalCnt = 0; // 총 몇페이지가 나올지
		if (recordTotalCnt % recordCntPerPage > 0) { // 총 데이터수 와 10개의 페이지를 나눈 나머지
			pageTotalCnt = (recordTotalCnt / recordCntPerPage) + 1;
		} else {
			pageTotalCnt = recordTotalCnt / recordCntPerPage;
		}

		if (currentPage < 1) { // currentPage 안전 장치
			currentPage = 1;

		} else if (currentPage > pageTotalCnt) {
			currentPage = pageTotalCnt;
		}

		// 시작 네비 페이지, 끝 네비 페이지 잡아주기
		int startNavi = ((currentPage - 1) / naviCntPerPage) * naviCntPerPage + 1;
		int endNavi = startNavi + naviCntPerPage - 1;

		if (endNavi > pageTotalCnt) { // endNavi 총 페이지 수를 초과되지 않게 맞춰주기.
			endNavi = pageTotalCnt;
		}

		// 이전, 다음 버튼 필요 여부 세팅
		boolean needPrev = true;
		boolean needNext = true;
		if (startNavi == 1)
			needPrev = false;
		if (endNavi == pageTotalCnt)
			needNext = false;

		System.out.println("startNavi : " + startNavi);
		System.out.println("endNavi : " + endNavi);
		System.out.println("needPrev : " + needPrev);
		System.out.println("needNext : " + needNext);

		HashMap<String, Object> map = new HashMap<>();
		map.put("startNavi", startNavi);
		map.put("endNavi", endNavi);
		map.put("needPrev", needPrev);
		map.put("needNext", needNext);
		map.put("currentPage", currentPage);

		return map;
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

	// 비밀번호 찾기 시 아이디 존재여부 확인
	public boolean existID(String id) throws Exception {
		if (dao.existID(id) == 1) {

			return true;
		} else {

			return false;
		}
	}

	// 비밀번호 찾기 시 이메일 존재여부 확인
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

	// 이메일 중복검사
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

	// 아이디에 해당하는 이메일 찾기
	public String matchEmail(String id) throws Exception {

		return dao.matchEmail(id);
	}

	// 임시비밀번호로 덮어씌우기
	public int resetPW(MemberDTO dto) throws Exception {

		return dao.resetPW(dto);
	}

	// 무시해도 됨 (확인 차에 해봄)
	public String originPW(String id) throws Exception {

		return dao.originPW(id);
	}

}
