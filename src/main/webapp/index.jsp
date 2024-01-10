<html>
<head>
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>css/font-awesome.css" />
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Warehouse</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/products">View All</a>
                <a class="nav-link" href="<%=request.getContextPath()%>/create">Insert</a>
                <a class="nav-link" href="#">Pricing</a>
            </div>
        </div>
    </div>
</nav>
<div class="container-fluid" style="display:flex;justify-content: space-around;margin-top: 16%">
<h1 class="display-1">Welcome !</h1>
</div>

<script src="<%=request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
</body>
</html>
