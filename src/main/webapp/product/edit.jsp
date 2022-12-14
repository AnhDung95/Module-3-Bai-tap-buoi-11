<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Edit product</title>
</head>
<body>
<h1>Edit product</h1>
<p>
  <c:if test='${requestScope["message"] != null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>
</p>
<p>
  <a href="/products">Back to product list</a>
</p>
<form action="" method="post">
  <fieldset>
    <legend>Product information</legend>
    <table>
      <tr>
        <td>ID: </td>
        <td><input type="text" name="id" id="id" value="${requestScope["product"].getId()}"></td>
      </tr>

      <tr>
        <td>Name: </td>
        <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
      </tr>
      <tr>
        <td>Price: </td>
        <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
      </tr>
      <tr>
        <td>Description: </td>
        <td><input type="text" name="description" id="description" value="${requestScope["product"].getDescription()}"></td>
      </tr>
      <tr>
        <td>Supplier: </td>
        <td><input type="text" name="supplier" id="supplier" value="${requestScope["product"].getSupplier()}"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Update product"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>
