package kh.com.finalProject.member;

import java.util.List;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService service;

	@Autowired
	private HttpSession session;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private BCryptPasswordEncoder pwEncoder;

	public MemberController() {
		System.out.println("MemberController 인스턴스 생성");
	}

	// 로그인 페이지로 감
	@RequestMapping("/toLogin.do")
	public String toLogin() {

		return "member/login";
	}

	// 회원가입 페이지로 감
	@RequestMapping("/toJoinus.do")
	public String toJoinus() {

		return "member/joinus";
	}
	
	// 로그아웃
		@RequestMapping("/toLogout.do")
		public String toLogout() {
			session.removeAttribute("loginSession");
			System.out.println("로그아웃");
			return "home";
		}
		
		// 마이페이지로 이동
		@RequestMapping("/toMyPage.do")
		public String tomyPage(Model model, String id) throws Exception {
			MemberDTO dto = service.getMember(id);
			model.addAttribute("dto",dto);
			return "member/myPage";
		}
	
	// 아이디 찾기 (팝업창 띄움)
	@RequestMapping("/tofindID.do")
	public String findID() {
		
		return "member/findID";
	}
	
	//	비밀번호 찾기 (팝업창 띄움)
	@RequestMapping("/tofindPW.do")
	public String findPW() {
		
		return "member/findPW";
	}
	

	// 로그인
	@RequestMapping(value = "/toLogin", produces = "text/html;charset=UTF-8")
	@ResponseBody
	// text/plain;charset=ISO-8859-1 : 한글 인식이 안되서 따로 매핑값에 추가 해줘야함
	// -> ajax 로 결과값 보내줄때 한글로 변환후 보내주는 매개변수
	public String login(String id, String pw) throws Exception {
		System.out.println("ID : " + id + "\n" 
				+ "PW : " + pw);
		MemberDTO dto = service.getMember(id);
		if (dto.getId() != null) {
			String rawPW = pw;
			String encodePW = dto.getPw();
			
			System.out.println("rawPW : " + rawPW + "\n" 
					+ "encodePW : " + encodePW);
			
			if (pwEncoder.matches(rawPW, encodePW)) {
				session.setAttribute("loginSession", dto);
				
				return "성공";
			} else {
				
				return "실패";
			}
		} else {
			
			return "fail";
		}
	}

	// ajax로 처리된 매핑값을 받아 ID 중복검사
	@RequestMapping("/VerifyID.do")
	@ResponseBody()
	public String VerifyID(String id) throws Exception {
		System.out.println("ID : " + id); // 값이 잘 넘어왔는지 확인

		if (service.verifyID(id)) { // service의 메서드를 사용
			// 결과값으로 "Available" return
			return "Available";
		} else {
			return "Unavailable";
		}
	}

	// 닉네임 중복 검사
	@RequestMapping("/VerifyNickname.do")
	@ResponseBody()
	public String VerifyNickname(String nickname) throws Exception {
		System.out.println("Nickname : " + nickname);
		if (service.verifyNickname(nickname)) {
			return "Available";
		} else {
			return "Unavailable";
		}
	}

	// 이메일 인증
	@RequestMapping("/CertificateCode.do")
	@ResponseBody()
	public String check(String email) throws Exception {
		System.out.println("Email : " + email); // 이메일이 잘 넘어왔나 확인

		// 인증번호 난수 생성
		Random random = new Random();
		int iCheckNum = random.nextInt(888888) + 111111; // 111111 ~ 999999 범위의 숫자를 얻기 위해서
		System.out.println("Certificate Code : " + iCheckNum);

		// 이메일 보내기
		String strSetFrom = "jp1005guest@gmail.com"; // root-context.xml에 주입한 자신의 이메일 계정 (보내는 사람의 구글 계정) => 계정관리 -> 보안
														// -> 보안 수준이 낮은 앱의 액세스 '사용'으로 바꿔야함
		String strToMail = email; // 수신받을 이메일
		String strTitle = "Email verification for membership registration"; // 자신이 보낼 이메일 제목
		String strContent = "Code : " + iCheckNum; // 자신이 보낼 이메일 내용

		// 이메일 전송을 위한 코드
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(strSetFrom);
			helper.setTo(strToMail);
			helper.setSubject(strTitle);
			helper.setText(strContent, true);
			mailSender.send(message);

		} catch (Exception e) {

			e.printStackTrace();
		}

		String strNum = Integer.toString(iCheckNum); // 인증번호를 String타입으로 타입캐스팅 후 strNum에 저장

		return strNum; // 값 return
	}

	// 회원가입 요청
	@RequestMapping("/joinus.do")
	public String joinus(MemberDTO dto) throws Exception {
		System.out.println("dto" + dto);

		String rawPW = ""; // 인코딩 전 PW
		String encodePW = ""; // 인코딩 후 PW

		rawPW = dto.getPw(); // 비밀번호 얻어옴
		encodePW = pwEncoder.encode(rawPW); // 비밀번호 인코딩
		dto.setPw(encodePW); // 인코딩된 비밀버호를 dto객체에 다시 저장

		service.insertMember(dto); // 회원가입 실행

		return "home";
	}
	
	//	아이디 찾기
	@RequestMapping("/findID.do")
	@ResponseBody()
	public List<MemberDTO> findID(String email) throws Exception {
		System.out.println("email : " + email);
		
		return service.findID(email);
		
	}
	
	// 회원탈퇴
			@RequestMapping(value = "/delete.do")
			public String delete(String id) throws Exception {
				System.out.println(id);
				service.delete(id);
				return "/";
			}
			// 회원정보 수정 페이지 이동
			@RequestMapping(value = "/modify.do")
			public String modify(String id, Model model) throws Exception {
				// 회원정보를 수정 페이지에 전달
				MemberDTO dto = service.getMember(id);
				System.out.println(dto);
				model.addAttribute("dto", dto);
				return "member/UserModify";
			}
			// 회원정보 수정
			@RequestMapping(value="/toModify.do")
			public String toModify(MemberDTO dto) throws Exception {
				System.out.println("toModify");
				//수정된 회원정보 update
				int rs = service.toModify(dto);
				if(rs != -1) {
					System.out.println("회원정보가 수정되었습니다.");
				}
				return "redirect:myPage.do";
			}
			
			//쪽지 보내기 팝업창 , 회원조회
			@RequestMapping(value="/note.do")
			public String note(Model model) throws Exception {
				System.out.println("note 팝업 controller 도착");
				List<MemberDTO> list = service.selectAll();
				model.addAttribute("list", list);
				return "member/note";
			}

}
