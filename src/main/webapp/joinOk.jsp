<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "com.gyojinjava.ex.*" %>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="dto" class="com.gyojinjava.ex.MemberDTO"/>
<jsp:setProperty name="dto" property="*" />


    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>joinOk.jsp</title>
</head>
<body>
	<%
	//String idr = dto.getId();
	//out.println(idr);
	MemberDAO dao = new MemberDAO();
	int ri = dao.insertMember(dto);//ri���� ��ȯ�� ����1 ���� 0
	
	if(ri == 1) {
		out.println("ȸ�������� ���ϵ帳�ϴ�");
	}
	
	%>
</body>
</html>