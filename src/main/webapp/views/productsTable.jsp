<%@ page import="java.util.List" %>
<%@ page import="com.davron.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: 99897
  Date: 1/9/2024
  Time: 6:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<% List<Product> products = (List<Product>) request.getAttribute("products");%>
<html>
<head>
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
<%--    <link rel="stylesheet" href="<%=request.getContextPath()%>css/font-awesome.css" />--%>
</head>
<body>
<table class="table table-dark table-striped">
    <thead>
    <tr>
        <th scope="col">id</th>
        <th scope="col">name</th>
        <th scope="col">price</th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <% for (Product product: products) {%>
    <tr>
        <th scope="row"><%=product.getId()%></th>
        <td><%=product.getName()%></td>
        <td><%=product.getPrice()%></td>
        <td>
            <a href="<%=request.getContextPath()%>/productInfo/view/<%=product.getId()%>">
                <button type="button" class="btn btn-primary">
                    <i class="fa-solid fa-eye"></i>
                </button>
            </a>
            <a href="<%=request.getContextPath()%>/productInfo/edit/<%=product.getId()%>">
                <button type="button" class="btn btn-info">
                    <i class="fa-solid fa-pen-to-square"></i>
                </button>
            </a>
            <a href="<%=request.getContextPath()%>/productInfo/delete/<%=product.getId()%>">
                <button type="button" class="btn btn-danger">
                    <i class="fa-solid fa-trash"></i>
                </button>
            </a>
        </td>
    </tr>

    <%}%>

    </tbody>
</table>
<script src="<%=request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/b8666938ec.js" crossorigin="anonymous"></script>
</body>
</html>
