<%--
  Created by IntelliJ IDEA.
  User: kiril
  Date: 23.09.2020
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Customers</title>

    <link type="text/css"
          rel="stylesheet"
          href="<%=request.getContextPath()%>/resources/css/style.css">
</head>

<body>
    <div id="wrapper">
        <div id="header">
            <h2>CRM - Customer Relationship Manager</h2>
        </div>
    </div>

    <div id="container">
        <div id="content">
            <input type="button" value="Add Customer"
                   onclick="window.location.href='showFormForAdd'; return false;"
                   class="add-button"
            />
            <table>
                <tr>
                    <th>First name</th>
                    <th>Last name</th>
                    <th>Email</th>
                    <th>Action</th>
                    <th>Something else here</th>
                </tr>

                <c:forEach var="tempCustomers" items="${customers}">

                    <c:url var="updateLink" value="/customer/showFormForUpdate">
                        <c:param name="customerId" value="${tempCustomers.id}"/>
                    </c:url>

                    <c:url var="deleteLink" value="/customer/delete">
                        <c:param name="customerId" value="${tempCustomers.id}"/>
                    </c:url>

                    <tr>
                        <td>${tempCustomers.firstName}</td>
                        <td>${tempCustomers.lastName}</td>
                        <td>${tempCustomers.email}</td>
                        <td>
                            <a href="${updateLink}">Update</a>
                            | <a href="${deleteLink}"
                                onclick="if(!(confirm('Are you sure?'))) return false">Delete</a>
                        </td>
                        <td>Some text</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>
