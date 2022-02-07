package kh.com.finalProject.endpoint;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import com.google.gson.JsonObject;

import kh.com.finalProject.configurator.SpringContext;
import kh.com.finalProject.configurator.WSConfig;
import kh.com.finalProject.member.MemberDTO;
import kh.com.finalProject.reply.ReplyDTO;
import kh.com.finalProject.reply.ReplyService;

@ServerEndpoint(value = "/reply", configurator = WSConfig.class)
public class ReplyEndPoint {
	// 모든 클라이언트의 session 값을 저장하는 저장소
	private static List<Session> clients = Collections.synchronizedList(new ArrayList<>());
	private HttpSession session;

	// Spring Container 내부에서 ChatService 클래스 형 인스턴스를 찾아 반환해 멤버필드에 담는 작업
	private ReplyService replyService = SpringContext.getApplicationContext().getBean(ReplyService.class);
	private ReplyDTO rdto;

	@OnOpen // 클라이언트와 엔드포인트 간의 첫 접속이 이뤄졌을때
	// OnOpen이라는 어노테이션이 붙은 메서드가 실행 됨
	public void onConnect(Session session, EndpointConfig config) {
		// Session 을 저장할 수 있는 List 에 접속한 클라이언트들의
		// 연결정보를 저장
		clients.add(session);
		this.session = (HttpSession) config.getUserProperties().get("hSession");
		System.out.println("현재 접속중인 Client : " + clients.toString());
		System.out.println("<====================================== 접속 완료 ======================================>");
	}

	@OnMessage // 클라이언트가 send한 메세지가 있으면 실행되는 메서드 부분
	public void onReceive(String replyData, Session session) {
		// 지금 접속한 클라이언트의 IP 주소
		// System.out.println("<========== [OnMessage]onRecevie 도착 : " + message + "
		// ==========>");
		String[] reply = replyData.split(",");
		String board_writer = reply[1];
		String board_seq = reply[2];
		System.out.println("<========== [OnMessage]onRecevie 도착 : " + replyData + " ==========>");
		String loginId = ((MemberDTO) this.session.getAttribute("loginSession")).getId();
		String replyNotice = loginId + " 님이 " + "<a href=${pageContext.request.contextPath}/board/detailView.do?board_seq="
				+ board_seq + "&currentPage=1></a>"
				+ board_seq + " 번째 게시물에 댓글을 달았습니다.";
		// String board_writer = "abc122";
		System.out.println("<========== webSocket loginId : " + loginId + " ==========>");
		// System.out.println("<========== webSocket message : " + message + "
		// ==========>");
		// System.out.println("<========== webSocket board_writer : " + board_writer + "
		// ==========>");


		// userID와 message 를 json 을 이용해 하나의 데이터로 합쳐주는 작업
		JsonObject obj = new JsonObject();
		// obj.addProperty("loginId", loginId);
		obj.addProperty("[알림]", replyNotice);
		//obj.addProperty("board_seq", board_seq);
		//obj.addProperty("board_writer", board_writer);
		// obj.addProperty("message", message);

		// 클라이언트로부터 받은 댓글정보를 DB 저장하는 작업 -> replyService
//		try {
//			replyService.insertReply(rdto);
//		}catch(Exception e) {
//			e.printStackTrace();
//			return;
//		}	

		// 메세지 발신
		synchronized (clients) { // 동기화 블럭
			// 이 동기화 블럭이 실행되는 동안 다른 쓰레드가 이 블럭 안으로 들어오는 것을 막아 줌
			// 즉 for문이 도는 중간에 onClose 메서드를 통해 clients list에 변화가 생겼다 하더라도
			// 즉각적으로 이 블럭안의 clients 리스트에 반영되지 않아 ConcurrentModification Exception 발생 X
			for (Session client : clients) {
				System.out.println("<========== webSocket client : " + client + " ==========>");
				if (client != session) { // 현재 메시지를 보낸 client는 제외하고.
					System.out.println("client.getId() : " + client.toString());
					// for문을 돌리면서 모든 클라이언트에게 지금 받은 메세지를 전송
					try { // throws를 하게 되면 나머지 클라이언트가 메세지를 받지 못할 수 있음
						System.out.println("sendText 보내기전");
						// 메세지를 JSON에 담아 뿌려주는 코드
						client.getBasicRemote().sendText(obj.toString());
						System.out.println("Obj.toString : " + obj.toString());
						System.out.println("sendText 보내기 완료");

						// 클라이언트 에 담긴 값 test
						// System.out.println("클라이언트 에 담긴 client.getId : " + client.getId().toString());
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}
		}
	}

	@OnClose // 연결이 끊어지면 실행되는 메서드
	public void onClose(Session session) {
		clients.remove(session);
		System.out.println(
				"<====================================== 클라이언트의 접속이 끊어졌습니다. ======================================>");
	}
}
