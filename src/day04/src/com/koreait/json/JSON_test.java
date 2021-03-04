package com.koreait.json;

import java.util.HashMap;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class JSON_test {
	//JSON 타입을 문자열로 담아줄 변수 
	public String json;
	
	public void jsonAdd() {
		//내부 JSON
		JSONObject jObj_in=new JSONObject();
		//외부 JSON 
		JSONObject jObj_out=new JSONObject();
		
		//j_array는 key값이 필요 없다.
		//JSONArray j_arra=new JSONArray();
		
		//데이터 3쌍 추가 (KEY,VALUE이기 때문에 쌍으로 저장)
		//내부에 먼저접근 
		jObj_in.put("name", "한동석");
		jObj_in.put("gender", "남");
		jObj_in.put("nation", "Republuc of korea");
		//{name:'한동석',gender :'남자' ,nation :'Republic of Korea'}
		
		//내부 JSON의 키값 
						//key  value
		jObj_out.put("han",jObj_in);
		//{"han" : {name:'한동석',gender :'남자' ,nation :'Republic of Korea'}
		
		
		//json을 문자열로 전송해주기 
		json=jObj_out.toJSONString();
		System.out.println(json);
	}
	
	public static void main(String[] args) {
		JSON_test j_test=new JSON_test();
		
		j_test.jsonAdd();
	
		//파싱하기 위한 객체 생성 
		//문자열로 받은 JSON을 다시 JSON타입으로 파싱 
		JSONParser p=new JSONParser();
		
		JSONObject jObj_in=new JSONObject();
		JSONObject jObj_out=new JSONObject();
	
		String name=null;
		String gender=null;
		String nation=null;
	
		try {
			//외부부터 풀어주기 
			//외부 먼저 접근 
			jObj_out=(JSONObject)p.parse(j_test.json);
			//내부 풀어주기 
			//이미 JSON에 접근 했기 때문에 jObj_out으로 접근하면 된다. 
			//get도 object기 때문에 down캐스틱 해주기 
			jObj_in=(JSONObject)jObj_out.get("han");
			
			name=(String)jObj_in.get("이름"+"name");
			gender=(String)jObj_in.get("성별"+"gender");
			nation=(String)jObj_in.get("국가"+"nation");
			
			System.out.println("이름"+name);
			System.out.println("성별"+gender);
			System.out.println("국가"+nation);
			
		} catch (ParseException e) {
			
	
		}
	}
}
