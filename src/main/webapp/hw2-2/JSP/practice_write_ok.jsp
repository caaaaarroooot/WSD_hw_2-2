<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="org.example.hw22.dao.BoardDAO"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="u" class="org.example.hw22.bean.BoardVO" />
<jsp:setProperty property="*" name="u"/>
<%
    BoardDAO boardDAO = new BoardDAO();
    int i = boardDAO.insertBoard(u);
    String msg =
            "데이터 추가 성공 !";
    if(i == 0) msg = "[에러] 데이터 추가 ";
%>
<script>
    alert('<%=msg%>');
    location.href='list.jsp';
</script>