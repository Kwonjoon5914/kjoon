package 에버랜드2;

public class 나이에따른명칭분류class {

	String ID_name;

	public 나이에따른명칭분류class() {
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
		} else {
			ID_name = "경로";
		}
		return ID_name;
	}

	@Override
	protected void finalize() throws Throwable {

	}
}