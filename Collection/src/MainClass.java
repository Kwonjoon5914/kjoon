
import java.util.ArrayList;
import java.util.List;

public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//List
		List<OrderListCollection> data = new ArrayList<OrderListCollection>();
		for(int i=0;i<10;i++) {
			OrderListCollection orderList = new OrderListCollection();
			orderList.ticketType = "주간권";
			orderList.age = 30;
			orderList.count = 2;
			orderList.price = 50000;
			orderList.advantage = "경로";
			data.add(orderList);
		}
		
		for(OrderListCollection order : data) {
			System.out.printf("%s %d %d %d %s\n", order.ticketType, order.age, order.count, order.price, order.advantage);
		}
	}

}