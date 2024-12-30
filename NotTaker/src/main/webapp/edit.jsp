<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
			<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit your Note</h1>
		<br>
		<%
			int noteId= Integer.parseInt(request.getParameter("note_id").trim());
			Session s=FactoryProvider.getFactory().openSession();
		
			Note note=(Note)s.get(Note.class,noteId);
			
		%>
		
		<form action="Update" method="post">
		
			<input value="<%= note.getId() %>" name="noteId" type="hidden">
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input required  name="title"
				type="text" 
				class="form-control" 
				id="title"
				aria-describedby="emailHelp"
				placeholder="Enter Title" 
				value= "<%=note.getTitle()%>"/>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				 <textarea  required
				 name="content"
				 class="form-control" 
				 style="height:300px;"
				 id="content" 
				 placeholder="Enter your Content Here" 
				 
				 ><%=note.getContent() %></textarea>
			</div>
		
				<div class="container text-center" >
					<button type="submit" class="btn btn-success">Save Your Note</button>			
				</div>
			
		</form>
	</div>
</body>
</html>