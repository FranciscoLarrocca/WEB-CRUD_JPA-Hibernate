<%-- 
    Document   : error    
    Author     : Francisco Larrocca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <title>Error</title>
    </head>
    <body>
    <center>
        <header class="py-2 bg-dark text-white"> 
            <h1>Error</h1>
        </header>
        <br><br>
        <h2><%=exception.getMessage()%><br/> </h2>
    </center> 
</body>
</html>
