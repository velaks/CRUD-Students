<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
  <title>BookData</title>
</head>
<body>
<h1>Student Details</h1>

<table border=1>
  <tr>
    <th width="80">ID</th>
    <th width="120">First Name</th>
    <th width="120">Last Name</th>
    <th width="120">Grade</th>
    <th width="120">Speciality</th>
  </tr>
  <tr>
    <td>${student.id}</td>
    <td>${student.firstName}</td>
    <td>${student.lastName}</td>
    <td>${student.grade}</td>
    <td>${student.speciality}</td>
  </tr>
</table>
</body>
</html>