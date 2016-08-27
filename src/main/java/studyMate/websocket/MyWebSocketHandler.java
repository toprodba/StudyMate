package studyMate.websocket;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class MyWebSocketHandler extends TextWebSocketHandler {

	Set<WebSocketSession> sessionSet = new HashSet<WebSocketSession>(); //클라이언트 연결 객체를 보관할 자료구조 객체 (Set)

	@Override//클라이언트 연결이 끊어졌을 때 자동으로 호출되는 메소드. 파라미터 session은 클라이언트 연결 객체이다.
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		super.afterConnectionClosed(session, status);
		sessionSet.remove(session);//클라이언트 연결이 끊어지면 클라이언트 객체를 보관하던 Set자료구조 sessionSet에서 제거해준다.
	}

	@Override//클라이언트가 연결되었을 때 호출됨.
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		super.afterConnectionEstablished(session);
		sessionSet.add(session);//연결된 클라이언트를 자료구조에 add 해준다.
		System.out.println("추가된 세션의 id값:  "+session.getId());
	}

	@Override//클라이언트가 보낸 메세지가 서버에 도착하면 호출됨.
	public void handleMessage(WebSocketSession session, WebSocketMessage<?> document) throws Exception {
		String text = (String)document.getPayload();//클라이언트가 보낸 메세지의 본문을 꺼내서 String 형으로 형변환 한 후 text에 저장
		System.out.print("클라이언트에서 보낸 문서 내용: "+text);
		sendMessageToAllClients(text);//연결된 모든 클라이언트에게 메세지를 보낸다.
	}

	private void sendMessageToAllClients(String text) throws IOException {//연결된 모든 클라이언트에게 메세지를 보내기 위한 메소드
		System.out.println("접속한 사용자에게 뿌릴 내용: "+text);
		TextMessage msg = new TextMessage(text);//TextMessage 객체 생성.
		for (WebSocketSession session : sessionSet)// 연결된 클라이언트 객체들을 저장하고있는 sessionSet에서 객체를 하나씩 꺼낸 후 
			session.sendMessage(msg);//메세지를 보낸다. 즉 모든 클라이언트들에게 메세지를 보내줌.

	}


}
