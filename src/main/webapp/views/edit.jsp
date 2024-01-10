<%@ page import="com.davron.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: 99897
  Date: 1/10/2024
  Time: 1:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
<head>
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <%--    <link rel="stylesheet" href="<%=request.getContextPath()%>css/font-awesome.css" />--%>
</head>
<body>

<form  class="row gy-2 gx-3 align-items-center" id="productForm">

        <label class="visually-hidden" for="name">Name</label>
        <input type="text" class="form-control" id="name" placeholder="Name of product">




        <label class="visually-hidden" for="price">Price</label>
        <input type="text" class="form-control" id="price" placeholder="Price">


        <div class="col-auto">
<%--        <a href="<%=request.getContextPath()%>/products/<%=%>">--%>
        <button type="submit" class="btn btn-primary" onclick="submitForm()" >Submit</button>

</form>

<script>
    function submitForm() {
        var name = document.getElementById('name').value;
        var price = document.getElementById('price').value;

        var form = document.getElementById('productForm');
        form.action = '<%=request.getContextPath()%>/product/' + encodeURIComponent(name) + '/' + encodeURIComponent(price) + '/' +<%=((Product)request.getAttribute("product")).getId()%>;
        form.method = 'GET';
        form.submit();
    }
</script>

</body>
</html>
