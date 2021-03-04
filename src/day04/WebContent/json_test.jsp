<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실시간 검색 순위</title>
</head>
<body>
   <table border="1">
      <tr>
         <td class="td1"><h2>실시간 검색 순위</h2></td>
         <td class="td2"><div id="ranking">키워드</div></td>
      </tr>
   </table>
</body>
<script>
/* window.onload -->위에 코드가 다 준비가 되면 실행  */
   window.onload = function(){
		//베열 선언 (내장코어)
      var words = new Array();
		//JASON 담기
      var obj = "";
      
      //div 태그  값 가져오기
      var ranking = document.getElementById("ranking");
      
      //ajax 
      var request = new XMLHttpRequest();
      request.open("GET", "data.json", true);
      request.send();
      
      request.onreadystatechange = function(){
         if(request.readyState == 4){
            if(request.status == 200){
            	//자바스크립트에는parse가 기본으로 제공
            	//parse를 쓰면 JSON타입을  바꿔줌 
            	//request.responseText-->JSON값이 text기 때문에 가져온다.
            	//obj는 이제 JSON타입
               obj = JSON.parse(request.responseText);
               //JSONArray의 길이만큼 반복(1위부터 4위까지)
               for(let i=0; i<obj.search_word.length; i++){
            	   //obj는 JSON타입이므로 obj.으로 들어가서 key 값인 search_word를 가져오면 된다.
            	   //각각의 프로퍼티를 가져와서 word[i]에 순서대로 지정한다.
            	   //search_word[i]]는 주소값에만 접근한 것임으로 .rank로 한번더 접근 
                  words[i] = "[" + obj.search_word[i].rank + "]" + obj.search_word[i].name;
               }
            }
         }
      }
      
      var i = 0;
      //seInterval(function(){실현할기능},밀리초) : 밀리초마다 함수 기능 실행 
      //종료하기 위해서 변수선언해서 넣어주기 
      var interval = setInterval(function(){
    	  //i는 최대값을 3으로 유지시킨다(길이가 0~3칸이기 때문에 )
    	  //i가 4면 search_word.length의 끝임으로 다시 0으로 초기화 시켜준다.
         if(i == obj.search_word.length) { i = 0;}
         //결과를 순서대로 ranking에 넣어준다
         ranking.innerHTML = "<h3>" + words[i] + "</h3>";
         i++;
         //2초씩 
      }, 500);
      
      setTimeout(function(){
    	  //선언된 setInerval객체를 없애준다.
         clearInterval(interval);
    	  //10초가 되는 순간 없어진다.
      }, 10000);
   }
</script>
</html>




