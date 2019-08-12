package testp;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class testp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	
		String str = "[{'NO':1,'NAME':'APPLE','KOR':'사과','PRICE':'1000'},{'NO':2,'NAME':'BANANA','KOR':'바나나','PRICE':'500'},{'NO':3,'NAME':'MELON','KOR':'메론','PRICE':'2000'}]";
		
		JsonParser jsonParser = new JsonParser();//파싱을 위해 JsonParser 객체를 만들기.	
		//json은 key와 value 가 중괄호 { , } 안에서 표현되고,  대괄호 [ , ]  는 하나의 value 가 될 수 있다.
		JsonArray jsonArray = (JsonArray) jsonParser.parse(str);//Array가 대괄호를 뜻하기에 [ ] 안의 데이터가 JsonArray에 담긴다. Array(대괄호)를 나누는 key가 없으므로 곧바로 JsonParser를 이용해 파싱한다.
		
		for (int i=0; i < jsonArray.size(); i++) {
			JsonObject object = (JsonObject) jsonArray.get(i);
			//object.get("태그") 로 object 안의 key를 찾아 해당하는 value를 리턴해준다.
			String NO = object.get("NO").getAsString();
			String NAME = object.get("NAME").getAsString();
			String KOR = object.get("KOR").getAsString();
			String PRICE = object.get("PRICE").getAsString();

			System.out.println(NO);
			System.out.println(NAME);
			System.out.println(KOR);
			System.out.println(PRICE);
			System.out.println();
		}
	}

}
