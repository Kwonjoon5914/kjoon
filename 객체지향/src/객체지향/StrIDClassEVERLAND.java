package 객체지향;

public class StrIDClassEVERLAND {

	String ID_name;
	public StrIDClassEVERLAND() {
		ID_name = "";
	}
	
	public String stringID(int inputID) {
		if (inputID < 3) { // 유아
			ID_name = "유아";
		} else if (3 <= inputID && inputID < 13) { // 소인
			ID_name = "소인";
		} else if (13 <= inputID && inputID < 19) { // 청소년
			ID_name = "청소년";
		} else if (19 <= inputID && inputID < 66) { // 어른
			ID_name = "어른";
		} else { // 경로
			ID_name = "경로";
		}
		return ID_name;
	}

	@Override
	protected void finalize() throws Throwable {
	
	}

}
