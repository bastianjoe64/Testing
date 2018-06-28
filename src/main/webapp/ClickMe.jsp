<%-- 
    Document   : ClickMe
    Created on : Jun 13, 2018, 12:03:18 PM
    Author     : bastianjoe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World! click Me </h1>
    </body>
    <script src="jquery.min.js" type="text/javascript"></script>
    <Script>
        $.ajax({
            url: "https://circleci.com/api/v1.1/project/github/JiteshGaikwad/circleci-demo-java-spring?circle-token=%22a25561bca18d6f997069b28b12b4f2f04d67e4f7%22",
            success: function (data, textStatus, jqXHR) {
//                console.log(JSON.parse(data));
                data = JSON.parse(data);
                if (!data[0].failed) {
                    console.log("SuccessFul");
                } else {
                    console.log("Failed");

                }
            }, error: function (jqXHR, textStatus, errorThrown) {
                console.log(errorThrown);

            }
        })
    </script>
</html>
