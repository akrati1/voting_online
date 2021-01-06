<%@page import="modal.adminmodal"%>
<%@  page import="modal.Usermodal"%>
<%@ page import="dao.UserDao"%>
<%@ page import="modal.candmodal" %>
<%
	String candEnrollId = request.getParameter("candEnrollId");
	String cpass = request.getParameter("cpass");
	candmodal cand = new candmodal();
	cand.setCandEnrollId(candEnrollId);
	cand.setCpass(cpass);
	UserDao userdao = new UserDao();
	Boolean b = userdao.validatecandi(cand);
	if (b == true) {
		application.setAttribute("candEnrollId", cand.getCandEnrollId());
		response.sendRedirect("Welcomecand.jsp");
		
	} else {
		response.sendRedirect("error.jsp");
	}
%>