<%@ include file="connect.jsp" %>
<%

try
{
	String id=request.getParameter("id");
	
	Statement st=connection.createStatement();
	String query1="update user set search_per='Permitted' where id='"+id+"'";
	st.executeUpdate(query1);
	
	connection.close();
	
	response.sendRedirect("C_SearchReq.jsp");
}
catch(Exception e)
{
out.println(e);
}

%>
