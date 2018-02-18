<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Students Page</title>
</head>
<body>
<a href="/">Back to main menu</a>
<br/>
<br/>

<h1>Student list</h1>

	<table border=1>
		<tr>
			<th width="80">ID</th>
		    <th width="120">First Name</th>
		    <th width="120">Last Name</th>
		    <th width="120">Grade</th>
		    <th width="120">Speciality</th>
		    <th width="60">Edit</th>
		    <th width="60">Delete</th>
		</tr>
		<c:forEach items="${listStudents}" var="student">
			<tr>
				<td>${student.id}</td>
				<td><a href = "studentdata/${student.id}" 
				target = "_blank">${student.firstName}</a></td>
				
				<td>${student.lastName}</td>
				<td>${student.grade}</td>
				<td>${student.speciality}</td>
				
				<td><a href="<c:url value='/edit/${student.id}'/>">
				Edit</a></td>
				
				<td><a href="<c:url value='/remove/${student.id}'/>">
				Delete</a></td>
			</tr>
		</c:forEach>
	</table>


<h1>Add Student</h1>

<c:url var="addAction" value="/students/add"/>

<form:form action = "${addAction}" commandName="student">
	<table>
		
			<tr>
				<td>Student ID</td>
				<td><form:input path="id" /></td>
			</tr>
			<tr>
				<td>First name</td>
				<td><form:input path="firstName"/></td>
			</tr>
			<tr>
				<td>Last name</td>
				<td><form:input path="lastName"/>
			</tr>
			<tr>
				<td>Grade</td>
				<td><form:input path="grade"/>
			</tr>
			<tr>
				<td>Speciality</td>
				<td><form:input path="speciality"/>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" name="action" value="Add" />
					<input type="submit" name="action" value="Edit" />
				</td>
			</tr>

	</table>
</form:form>
</body>
</html>
