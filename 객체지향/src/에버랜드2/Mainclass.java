package ��������2;

import java.util.ArrayList;
import java.util.List;

public class Mainclass {
	
	public static void main(String[] args) {
		// ����
		���̰��class ci = new ���̰��class();
		����class gtn = new ����class();
		Ƽ�ϰ���class gtp = new Ƽ�ϰ���class();
		�������class gtren = new �������class();
		�Է�class ic = new �Է�class();
		���class pc = new ���class();
		���̿�������Ī�з�class sid = new ���̿�������Ī�з�class();
		
		List<EverlandOrderList> data = new ArrayList<EverlandOrderList>();
		

		int inputType = 0, inputID = 0, inputCount = 0, inputAdvantage = 0;
		int outputPrice = 0;
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