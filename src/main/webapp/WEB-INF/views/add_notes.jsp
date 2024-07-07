<!doctype html>
<html lang="en" xmlns:c="http://www.w3.org/1999/html">
<head>
    <%@include file="./base.jsp"%>
</head>
<body style="background-image:url(<c:url value='/views/images/notes.avif'/>);background-size: cover;background-position: center;">


<%@include file="./nav.jsp"%>


<div class="container mt-5">

    <div class="row">
        <div class="col-md-10 offset-md-1 mt-5">
            <div class="card">
                <div class="card-header text-center">
                    <h3>Add Your Notes</h3>
                    <c:if test="${not empty msg }">
                        <p class="fs-1 fw-bold text-success">${msg}</p>
                        <c:remove var="msg"/>
                    </c:if>
                </div>
                <div class="card-body">
                    <form class="form" action="${pageContext.request.contextPath}/user/saveNotes" method="post">
                        <div class="form-group ">
                            <label for="title">Title</label>
                            <input class="form-control" type="text" name="title" id="title">
                        </div>
                        <div class="form-group mt-3">
                            <label for="description">Enter Qualification</label>
                            <textarea class="form-control" name="description" id="description" cols="30" rows="10"></textarea>
                        </div>

                        <button class="btn btn-primary mt-3 col-md-12" type="submit">Save</button>

                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>