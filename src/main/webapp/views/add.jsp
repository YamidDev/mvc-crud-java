<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Persons</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>

        <div class="container">
            <div class="row mt-5">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title text-center">Register Person</h3>
                        </div>

                            <form action="Controller">
                                <div class="form-group">
                                    <label for="id">ID:</label>
                                    <input name="id" id="name" class="form-control col-sm-2" type="number" disabled>
                                
                                    <label for="txtDni">Dni:</label>
                                    <input name="txtDni" id="txtDni" class="form-control col-sm" type="text" required>
                                
                                    <label for="txtNames">Names:</label>
                                    <input name="txtNmes" id="txtNames" class="form-control col-sm" type="text" required>
                                    <div class="dropdown-divider"></div>
                                    <input class="btn btn-success float-right" type="submit" name="action" value="Save">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
