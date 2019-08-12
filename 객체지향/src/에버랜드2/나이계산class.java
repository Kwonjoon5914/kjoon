package 에버랜드2;

public class 나이계산class {

	int returnAge;
	
	public 나이계산class() {
		returnAge = 0;
	}
	
	public int calcAge(int memberID) {
		returnAge = memberID / 10000;
		if (returnAge <= 19) {
			returnAge = 2019 - (returnAge + 2000) + 1;
		} else {
			returnAge = 2019 - (returnAge + 1900) + 1;
		}
		return returnAge;
	}
	
	@Override
	protected void finalize() throws Throwable {
		
	}
}
