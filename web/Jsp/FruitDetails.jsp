<%-- 
    Document   : FruitDetails
    Created on : Dec 19, 2022, 6:56:04 PM
    Author     : Naser
--%>

<%@page import="model.Fruit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fruit Details</title>
    </head>
    <body>
        <%
            Fruit fruit = (Fruit) request.getAttribute("fruit");
        %>
        <table border="1">
            <tr>
                <td colspan="2">
                    <img src="images\<%=fruit.image%>" width="300px" height="150px"/>
                </td>
            </tr>
            <tr>
                <th>Id</th>
                <td><%= fruit.id%></td>
            </tr>
            <tr>
                <th>Fruit Name</th>
                <td><%= fruit.fruitName%></td>
            </tr>
            <tr>
                <th>Gram</th>
                <td><%= fruit.gram%></td>
            </tr>
            <tr>
                <th>Calories</th>
                <td><%= fruit.Calories%></td>
            </tr>
            <tr>
                <th>Calories From Fat</th>
                <td><%= fruit.CaloriesfromFat%></td>
            </tr>
            <tr>
                <th>Total Fat_g</th>
                <td><%= fruit.TotalFat_g%></td>
            </tr>
            <tr>
                <th>Sodium_mg</th>
                <td><%= fruit.Sodium_mg%></td>
            </tr>
            <tr>
                <th>Potassium_mg</th>
                <td><%= fruit.Potassium_mg%></td>
            </tr>
            <tr>
                <th>Total Carb_g</th>
                <td><%= fruit.TotalCarb_g%></td>
            </tr>
            <tr>
                <th>Dietary Fiber_g</th>
                <td><%= fruit.DietaryFiber_g%></td>
            </tr>
            <tr>
                <th>Sugars_g</th>
                <td><%= fruit.Sugars_g%></td>
            </tr>
            <tr>
                <th>Protein_g</th>
                <td><%= fruit.Protein_g%></td>
            </tr>
            <tr>
                <th>Vitamin A_DV</th>
                <td><%= fruit.VitaminA_DV%></td>
            </tr>
            <tr>
                <th>Vitamin C_DV</th>
                <td><%= fruit.VitaminC_DV%></td>
            </tr>
            <tr>
                <th>Calcum DV</th>
                <td><%= fruit.Calcum_DV%></td>
            </tr>
            <tr>
                <th>Iron DV</th>
                <td><%= fruit.Iron_DV%></td>
            </tr>
            <tr>
                <td><a href ='Control?cmd=Fruits'>Back</a></td> 
                <td><a href ='Control?cmd=FruitAS&id=<%=fruit.id%>'> Add To List</a></td>
            </tr>

        </table>
    </body>
</html>
