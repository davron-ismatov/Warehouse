<%@ page import="com.davron.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: 99897
  Date: 1/9/2024
  Time: 7:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%Product product = (Product) request.getAttribute("product");%>
<html>
<head>
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <%--    <link rel="stylesheet" href="<%=request.getContextPath()%>css/font-awesome.css" />--%>
</head>
<body>
<div class="container-fluid" style="display: flex;justify-content: space-around;">
    <div class="card" style="width: 18rem;margin-top: 18%;">
        <img src="<%=request.getContextPath()%>/images/halal.webp" class="card-img-top" alt="..." style="width: 200px;height: 200px;">
        <div class="card-body">
            <p class="text-uppercase"><%=product.getName()%></p>
            <p class="card-text">Price: <%=product.getPrice()%> sums</p>

        </div>
    </div>
</div>
<script src="<%=request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>

</body>
</html>
