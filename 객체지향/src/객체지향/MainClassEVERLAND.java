package 객체지향;

public class MainClassEVERLAND {

	public static void main(String[] args) {
		// 선언
		ImportClassEVERLAND ic = new ImportClassEVERLAND();
		CalcAgeClassEVERLAND cac = new CalcAgeClassEVERLAND();
		StrIDClassEVERLAND sId = new StrIDClassEVERLAND();
		GetTicketPriceClassEVERLAND gtpc = new GetTicketPriceClassEVERLAND();
		GetTreatNameClassEVERLAND gtren = new GetTreatNameClassEVERLAND();
		GetTicketNameClassEVERLAND gticn = new GetTicketNameClassEVERLAND();
		PrintClassEverland pc = new PrintClassEverland();
		
		int inputType = 0, inputID = 0, inputCount = 0, inputAdvantage = 0; // 키보드로 부터 입력받는 값 선언
		int outputPrice = 0; // 최종 출력 금액 선언
		int age = 0;
		String ageName = "", treatName = "", ticketName = "";
		
		while (true) {
			// 입력
			inputType = ic.inputTypeCommand();
			if (inputType == 99) {
				break;
			}
			inputID = ic.inputIDCommand();
			inputCount = ic.inputCountCommand();
			inputAdvantage = ic.inputAdvantageCommand();
			
			age = cac.calcAge(inputID);
			ageName = sId.stringID(age);

			outputPrice = gtpc.getTicketPrice(inputType, ageName, inputAdvantage);
			treatName = gtren.getTreatName(inputType, ageName, inputAdvantage);
			ticketName = gticn.getTicketName(inputType);

			pc.printTicket(outputPrice, inputCount, ticketName, ageName, treatName);
		}
	}
}

