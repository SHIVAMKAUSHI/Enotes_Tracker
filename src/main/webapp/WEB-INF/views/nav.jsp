<html lang="en">
<head>
    <%@include file="./base.jsp"%>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><i class="fa-solid fa-note-sticky px-1"></i>Enotes</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/"><i class="fa-solid fa-house px-1"></i>Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/addnotes">Add Notes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/viewnotes">View Notes</a>
                </li>


            </ul>

        </div>
        <div class="px-2 border-danger">
            <a href="${pageContext.request.contextPath}/login" class="btn btn-light mr-1  p-1">Login</a>
        </div>
        <div class="mr-1">
            <a href="${pageContext.request.contextPath}/register" class="btn btn-light  p-1">Register</a>
        </div>

    </div>
</nav>
</body>
</html>

