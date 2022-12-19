<%-- 
    Document   : fruitList
    Created on : Dec 19, 2022, 12:31:06 PM
    Author     : Naser
--%>

<%@page import="controller.Control"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Fruit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fruit List</title>
    </head>
    <body>
        <%
            ArrayList<Fruit> fruits = (ArrayList<Fruit>) request.getAttribute("fList");
        %>
        <table border="1">
            <%
                if (fruits != null) {
            %>
            <tr>
                <th>Id</th>
                <th>Fruit Name</th>
            </tr>
            <%
                for (Fruit f : fruits) {
            %>
            <tr>
                <td><%= f.id%></td>
                <td><a href="Control?cmd=OneFruit&id=<%=f.id%>"><%= f.fruitName%></a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
        <h1> My daily calories intake </h1>
        <%
            int count = 1;
            int tgrm = 0;
            float tcal = 0;
            ArrayList<Fruit> flTotake = (ArrayList<Fruit>) request.getSession().getAttribute("flTotake");
        %>
        <table border="1">
            <tr>
                <th>No.</th>
                <th>Fruit name</th>
                <th>Grams</th>
                <th>calories</th>
                <th></th>
            </tr>
            <%
                if (flTotake != null) {
                    for (Fruit fu: flTotake) {
            %>
            <tr>
                <td><%=count%></td>
                <td><%= fu.fruitName%></td>
                <td><%=fu.gram%></td>
                <td><%=fu.Calories%></td>
                <td><a href="Control?cmd=FruitDS&id=<%=count%>">Delete</a></td>
            </tr>

            <%
                        tgrm = tgrm + fu.gram;
                        tcal = tcal + fu.Calories;
                        count++;
                    }
                }
            %>
            <tr>
                <td colspan="2" >Totals</td>
                <td><%=tgrm%></td>
                <td><%=tcal%></td>
                <td></td>
            </tr>
        </table>
    </body>
</html>
