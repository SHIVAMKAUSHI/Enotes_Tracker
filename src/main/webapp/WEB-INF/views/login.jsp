<!doctype html>
<html lang="en">
<head>
    <%@include file="./base.jsp"%>
</head>
<body style="background-image:url(<c:url value='/views/images/notes.avif'/>);background-size: cover;background-position: center;">


<%@include file="./nav.jsp"%>


<div class="container mt-5">

    <div class="row">
        <div class="col-md-6 offset-md-3 mt-5">
            <div class="card">
                <div class="card-header text-center">
                    <h3>Login Page</h3>
                    <c:if test="${msg != null}">
                        <p class="fs-5 fw-bold text-danger">${msg}</p>
                        <c:remove var="msg"/>
                    </c:if>
                </div>
                <div class="card-body">
                    <form class="form" action="${pageContext.request.contextPath}/loginuser" method="post">
                        <div class="form-group mt-3">
                            <label for="email">Enter Email</label>
                            <input class="form-control" type="text" name="email" id="email">
                        </div>
                        <div class="form-group mt-3">
                            <label for="password">Enter Password </label>
                            <input class="form-control" type="password" name="password" id="password">
                        </div>
                        <button class="btn btn-primary mt-3 col-md-12" type="submit">Login</button>
                    </form>
                </div>
                <div class="card-footer text-center">
                    don't have an account <a href="register">register</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>