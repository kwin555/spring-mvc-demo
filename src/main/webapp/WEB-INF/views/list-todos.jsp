<%@ taglib prefix="spring" uri="http://java.sun.com/jsf/html" %>
<%@include file="header.jspf"%>
	<%@ include file="navigation.jspf" %>

	<div class="container">
		<table class="table table-striped">
			<caption>Your todos are:</caption>
			<thead>
				<tr>
					<th>Description</th>
					<th>Date</th>
					<th>Completed</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>

						<td><fmt:formatDate pattern="MM/dd/yyyy" value="${todo.targetDate}"/></td>
						<td>${todo.done}</td>
						<td>
							<a type="button" class="btn btn-info"
							   href="/update-todo?id=${todo.id}">Update</a>
							<a type="button" class="btn btn-warning" 
								href="/delete-todo?id=${todo.id}">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a type="button" class="btn btn-success" href="/add-todo">Add</a>
		</div>
	</div>

<%@ include file="footer.jspf"%>