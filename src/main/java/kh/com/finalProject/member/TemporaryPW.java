package kh.com.finalProject.member;

import java.util.Iterator;

public class TemporaryPW {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		for (int i = 0; i < 10; i++) {
			System.out.println(getRandomPW(10) + "\n");
		}
		
		//System.out.println(getRandomPW(10));
	}

	public static String getRandomPW(int len) {
		
		char[] charset = new char[] {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
				'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 
				'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 
				'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '?', '#', '?', '!', '@', '$', '%', '^', '&', '*', '-'};
		int idx = 0;
		StringBuffer sb = new StringBuffer();
		
		for (int i = 0; i < len; i++) {
			idx = (int)(charset.length*Math.random());	//	charset의 길이 * 생성된 난수를 int로 추출 (소수점 제거)
			sb.append(charset[idx]);
		}
		
		

		return "!" + sb.toString();	//	특수문자 하나를 더 넣어서 11글자
	}
}
