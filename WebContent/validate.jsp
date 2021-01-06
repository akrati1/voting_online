<%@  page import="modal.Usermodal"%>
<%@ page import="dao.UserDao"%>
<%
	String voter_id = request.getParameter("voter_id");
	String upass = request.getParameter("upass");
	Usermodal user = new Usermodal();
	user.setVoter_id(voter_id);
	user.setUpass(upass);
	UserDao userdao = new UserDao();
	Boolean b = userdao.validate(user);
	if (b == true) {
		application.setAttribute("voter_id", user.getVoter_id());
		response.sendRedirect("UserLoginScreen.jsp");
	} else {
		response.sendRedirect("error.jsp");
	}
%>