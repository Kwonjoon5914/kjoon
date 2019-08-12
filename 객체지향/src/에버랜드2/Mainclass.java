package 에버랜드2;

import java.util.ArrayList;
import java.util.List;

public class Mainclass {
	
	public static void main(String[] args) {
		// 선언
		나이계산class ci = new 나이계산class();
		권종class gtn = new 권종class();
		티켓가격class gtp = new 티켓가격class();
		우대적용class gtren = new 우대적용class();
		입력class ic = new 입력class();
		출력class pc = new 출력class();
		나이에따른명칭분류class sid = new 나이에따른명칭분류class();
		
		List<EverlandOrderList> data = new ArrayList<EverlandOrderList>();
		

		int inputType = 0, inputID = 0, inputCount = 0, inputAdvantage = 0;
		int outputPrice = 0;
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

			age = ci.calcAge(inputID);
			ageName = sid.stringID(age);

			outputPrice = gtp.Getticketprice(inputType, ageName, inputAdvantage);
			treatName = gtren.Gettreatname(inputType, ageName, inputAdvantage);
			ticketName = gtn.getTicketName(inputType);

			EverlandOrderList orderList = new EverlandOrderList(ticketName, ageName, inputCount, treatName, outputPrice);
//			orderList.setOutputPrice(outputPrice);
//			orderList.setInputCount(inputCount);
//			orderList.setTic_name(ticketName);
//			orderList.setAgeName(ageName);
//			orderList.setTre_name(treatName);
			data.add(orderList);

			pc.printTicket(data, outputPrice, inputCount, ticketName, ageName, treatName);
		}
	}
}