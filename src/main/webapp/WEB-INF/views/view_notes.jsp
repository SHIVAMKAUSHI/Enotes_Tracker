<!doctype html>
<html lang="en" xmlns:c="http://www.w3.org/1999/html">
<head>
    <%@include file="./base.jsp"%>
</head>
<body style="background-image:url(<c:url value='/views/images/notes.avif'/>);background-size: cover;background-position: center;">


<%@include file="./nav.jsp"%>


<div class="container my-5">

    <div class="row">
        <div class="col-md-10 offset-md-1  mt-5">

            <div class="card">
                <div class="card-header text-center">
                    <h3>View All Notes</h3>
                </div>

                <div class="card-body text-center">
                                <div class="border rounded mt-2 py-3">
                                    <c:forEach items="${ allNotes}" var="note">
                                    <img src="<c:url value='/views/images/notesimg.png'/>" alt="" height="50rem" width="50rem">
                                    <p>${note.title}</p>
                                    <p>${note.description}</p>
                                    <p>Published Date : ${note.date}</p>
                                    <a href="${pageContext.request.contextPath}/user/editnotes/${note.id}" class="btn btn-primary btn-sm">Edit</a>
                                    <a href="${pageContext.request.contextPath}/user/deleteNotes/${note.id}" class="btn btn-danger btn-sm">Delete</a>
                                    </c:forEach>
                                </div>
                </div>

            </div>

        </div>
    </div>
</div>

</body>
</html>
