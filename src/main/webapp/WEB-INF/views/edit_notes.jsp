<!doctype html>
<html lang="en">
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
                    <h3>Edit Your Notes</h3>
                </div>
                <div class="card-body">
                    <form class="form" action="${pageContext.request.contextPath}/user/updatenotes/${id}">
                        <div class="form-group ">
                            <label for="title">Enter Title</label>
                            <input class="form-control" type="text" name="title" id="title">
                        </div>
                        <div class="form-group mt-3">
                            <label for="description">Enter Description</label>
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