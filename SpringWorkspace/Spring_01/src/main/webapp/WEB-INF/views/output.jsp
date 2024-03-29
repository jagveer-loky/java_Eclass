<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact List</title>
</head>
<body>
	<table border=1 align=center>
		<tr>
			<th colspan=3>Contact list (${count })
		</tr>
		<tr>
			<th>
			<th>Name
			<th>Contact
		</tr>
		<c:forEach var="i" items="${list }">
			<tr>
				<th>${i.seq }
				<th>${i.name }
				<th>${i.contact }
			</tr>
		</c:forEach>
		<tr>
			<td colspan=3>
			<form action="search">
				<input type="text" placeholder="Target seq to Search" name="searchSeq"><button>Search</button>
			</form>
		</tr>
		<tr>
			<td colspan=3>
			<form action="deleteProc" method="get">
				<input type=text placeholder="Target Number to delete" name=delTarget><button>Delete</button>
			</form>
		</tr>
		<tr>
			<td colspan=3>
			<form action="updateProc" method="post">
			<input type="text" placeholder="Target Seq to update" name="seq"><br>
			<input type="text" placeholder="Target Name to update" name="name"><br>
			<input type="text" placeholder="Target Contact to update" name="contact"><br>
			<button>Update</button>
			</form>
		</tr>
		<tr>
			<td colspan=3 align=center><a href="/">back</a>
		</tr>
	</table>
	
</body>
</html>