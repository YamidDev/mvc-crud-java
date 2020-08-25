<%@page import="java.util.Iterator"%>
<%@page import="models.Person"%>
<%@page import="java.util.List"%>
<%@page import="dao.PersonDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="../index.jsp">List Persons<span class="sr-only">(current)</span></a>
                </li>
              </ul>
            </div>
        </nav>
        <div class="container">
            
            <table class="table">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Dni</th>
                    <th scope="col">Names</th>
                    <th scope="col">Actions</th>
                  </tr>
                </thead>
                <%
                    PersonDao dao=new PersonDao();
                    List<Person>list=dao.findAll();
                    Iterator<Person>iter=list.iterator();
                    Person per=null;
                    while(iter.hasNext()){
                        per=iter.next();
                        
                %>
                <tbody>
                  <tr>
                    <td scope="row"><%= per.getId()%></td>
                    <td><%= per.getDni()%></td>
                    <td><%= per.getName()%></td>
                    <td>
                        <a class="btn btn-success" role="button">Update</a>
                        <a class="btn btn-danger" role="button">Remove</a>                        
                    </td>
                  </tr>
                  <%}%>
                </tbody>
            </table>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
