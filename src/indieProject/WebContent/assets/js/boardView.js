/**
 * 
 */

$(document).ready(function(){getBoardReplies();});

// 댓글 목록
function getBoardReplies(){
	console.log(boardNum);
	$.ajax({
		url : pageContext + "/board/BoardReplyList.bo?boardNum="+ boardNum,
		type : "get",
		dataType : "json",
		success : showBoardReplies
	});
}

function showBoardReplies(replies){
	console.log(replies);
		var text = "";
		
		if(replies != null && replies.length != 0){
			$.each(replies, function(index, reply){
				text += "<tr style='background:transparent;'><td style='padding:10px;'>" + reply.memberId + "</td>";
				text += "<td valign='top' style='text-align:left;'>";
				text += "<div name='content" + (index + 1) + "' id='" + (index + 1) + "' class='re' style='width:750px; height:85px; resize:none;' readonly>" + reply.replyContent + "</div>";
				console.log(reply.memberId);
				
				if(sessionId == reply.memberId){
					console.log("여기 왜 안 들어와")
						text += "<a id='ready" + (index + 1) + "' href='javascript:updateReply(" + (index + 1) + ")style='float:right; text-decoration:none;'>[수정]</a>";
						text += "<a id='ok"+ (index + 1) + "' href='javascript:updateOkReply(" + reply.replyNum + ", " + (index + 1) + ")' style='display:none;'>[수정 완료]</a>";
						text += "<a href='javascript:deleteReply(" + reply.replyNum + ") style='float:right; text-decoration:none;'>[삭제]</a>"
				}
				text += "</td></tr>";
			});
		}else{
			text += "<tr align='center'><td align='center' width='150px' colspan='2'>댓글이 없습니다.</td></tr>";
		}
		
		$("#replyTable").html(text);
//		autosize($("textarea.re"));
}