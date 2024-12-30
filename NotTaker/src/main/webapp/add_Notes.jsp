<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		
		<h1>Please Fill Your Notes Details</h1>
		<br>
		
		<!-- Thsi is add form -->

		<form action="saveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input required  name="title"type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Title" />
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				 <textarea  required
				 name="content"
				 class="form-control" 
				 style="height:300px;"
				 id="content" 
				 placeholder="Enter your Content Here"
				 ></textarea>
			</div>
		
				<div class="container text-center" >
					<button type="submit" class="btn btn-primary">Add</button>		
				</div>
			
		</form>
	</div>
	<br>
	
	
</body>
</html>