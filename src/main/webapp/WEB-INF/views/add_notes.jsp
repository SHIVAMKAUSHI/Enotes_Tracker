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
                    <h3>Add Your Notes</h3>
                </div>
                <div class="card-body">
                    <div class="form">
                        <div class="form-group ">
                            <label for="">Enter Title</label>
                            <input class="form-control" type="text" name="" id="">
                        </div>
                        <div class="form-group mt-3">
                            <label for="">Enter Description</label>
                            <textarea class="form-control" name="" id="" cols="30" rows="10"></textarea>
                        </div>
                        <button class="btn btn-primary mt-3 col-md-12" type="submit">Save</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>