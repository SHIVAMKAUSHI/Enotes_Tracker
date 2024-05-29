<!doctype html>
<html lang="en">
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
                        <img src="<c:url value='/views/images/notesimg.png'/>" alt="" height="50rem" width="50rem">

                        <p>What is Java ?</p>
                        <p>Java is programming Language</p>
                        <p>Publish Date:2023-05-08</p>

                        <a href="${pageContext.request.contextPath}/editnotes" class="btn btn-primary btn-sm">Edit</a>
                        <a href="" class="btn btn-danger btn-sm">Delete</a>
                    </div>
                    <div class="border rounded mt-2 py-3">
                        <img src="<c:url value='/views/images/notesimg.png'/>" alt="" height="50rem" width="50rem">

                        <p>What is Java ?</p>
                        <p>Java is programming Language</p>
                        <p>Publish Date:2023-05-08</p>

                        <a href="" class="btn btn-primary btn-sm">Edit</a>
                        <a href="" class="btn btn-danger btn-sm">Delete</a>
                    </div>


                </div>

            </div>
        </div>
    </div>
</div>

</div>

</body>
</html>
