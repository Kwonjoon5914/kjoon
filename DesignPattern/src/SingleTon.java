//////////////////////////////////////////////////////
//
// Title : Singleton
// Date  : 2019.05.24
// Author : KJ
// Comment : Singleton
//
//////////////////////////////////////////////////////
public class SingleTon {
	private static SingleTon s = new SingleTon();//변수 선언(s 외부에서 못쓰게 하기위해 private)
	
	private SingleTon() {//public으로 바꾸게되면
		
	}
	
	public static SingleTon getInstance () {//메서드
		if(s == null) {
			s = new SingleTon();//s값이 null이면 SingleTon 새로 생성
		}
		return s;//s값 반환
	}
}
