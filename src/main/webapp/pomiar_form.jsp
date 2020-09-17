<%--
  Created by IntelliJ IDEA.
  User: korneliajagodzinska
  Date: 16/09/2020
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Pomiar</title>
    <jsp:include page="part_style.jsp"/>
</head>
<body>
<jsp:include page="part_navigator.jsp"/>
<div class="container">
    <h2>Pomiar</h2>
    <form action="${pageContext.request.contextPath}/pomiar/form" method="post">
        <div class="row form-check">
            <label class="col-4" for="monterField">Monter:</label>
            <select class="col-8" id="monterField" name="monterValue">
                <c:forEach items="${requestScope.monter}" var="monter">
                    <option value="${monter}">${monter}</option>
                </c:forEach>
            </select>
        </div>
        <div class="row col-12 form-check">
            <input type="text" name="klientValue" id="klientField">
            <label class="form-check-label" for="klientField">Klient:</label>
        </div>
        <div class="row col-12 form-check">
            <input type="text" name="adresKlientaValue" id="adresKlientaField">
            <label class="form-check-label" for="adresKlientaField">Adres Klienta:</label>
        </div>
        <div class="row col-12 form-check">
            <input type="number" step="1" name="długośćDrzwiValue" id="długośćDrzwiField">
            <label class="form-check-label" for="długośćDrzwiField">Długość drzwi:</label>
        </div>
        <div class="row col-12 form-check">
            <input type="number" step="1" name="szerokośćDrzwiValue" id="szerokośćDrzwiField">
            <label class="form-check-label" for="szerokośćDrzwiField">Szerokość drzwi:</label>
        </div>
        <div class="row form-check">
            <label class="col-4" for="typDrzwiField">Typ Drzwi:</label>
            <select class="col-8" id="typDrzwiField" name="typDrzwiValue">
                <c:forEach items="${requestScope.typ_drzwi}" var="typDrzwi">
                    <option value="${typDrzwi}">${typDrzwi}</option>
                </c:forEach>
            </select>
        </div>
        <button class="form-control btn btn-danger colored-red" type="submit">Wyślij pomiar</button>
    </form>
</div>
<jsp:include page="part_footer.jsp"/>
</body>
</html>
