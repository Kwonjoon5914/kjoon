package ��ü����;

public class MainClassEVERLAND {

	public static void main(String[] args) {
		// ����
		ImportClassEVERLAND ic = new ImportClassEVERLAND();
		CalcAgeClassEVERLAND cac = new CalcAgeClassEVERLAND();
		StrIDClassEVERLAND sId = new StrIDClassEVERLAND();
		GetTicketPriceClassEVERLAND gtpc = new GetTicketPriceClassEVERLAND();
		GetTreatNameClassEVERLAND gtren = new GetTreatNameClassEVERLAND();
		GetTicketNameClassEVERLAND gticn = new GetTicketNameClassEVERLAND();
		PrintClassEverland pc = new PrintClassEverland();
		
		int inputType = 0, inputID = 0, inputCount = 0, inputAdvantage = 0; // Ű����� ���� �Է¹޴� �� ����
		int outputPrice = 0; // ���� ��� �ݾ� ����
		int age = 0;
		String ageName = "", treatName = "", ticketName = "";
		
		while (true) {
			// �Է�
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

