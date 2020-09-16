<%--
  Created by IntelliJ IDEA.
  User: korneliajagodzinska
  Date: 16/09/2020
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pomiar</title>
    <jsp:include page="style.css"/>
</head>
<body>
<jsp:include page="navigator.jsp"/>
<div class="container">
    <h2>Pomiar</h2>
    <form action="${pageContext.request.contextPath}/pomiar_form.jsp" method="post">
        <div class="row form-check">
            <label class="col-4" for="monter">monter:</label>
            <select class="col-8" id="monter" name="monter">
                <c:forEach items="${requestScope.monter}" var="monter">
                    <option value="${monter}">${monter}</option>
                </c:forEach>
            </select>
        </div>
        <div class="row col-12 form-check">
            <input type="text" name="klient" id="klient">
            <label class="form-check-label" for="klient">klient:</label>
        </div>
        <div class="row col-12 form-check">
            <input type="text" name="adresKlienta" id="adresKlienta">
            <label class="form-check-label" for="adresKlienta">adresKlienta:</label>
        </div>
        <div class="row col-12 form-check">
            <input type="number" step="1" name="długość_drzwi" id="długość_drzwi">
            <label class="form-check-label" for="długość_drzwi">długość_drzwi:</label>
        </div>
        <div class="row col-12 form-check">
            <input type="number" step="1" name="szerokość_drzwi" id="szerokość_drzwi">
            <label class="form-check-label" for="szerokość_drzwi">szerokość_drzwi:</label>
        </div>
        <div class="row form-check">
            <label class="col-4" for="typDrzwi">typDrzwi:</label>
            <select class="col-8" id="typDrzwi" name="typDrzwi">
                <c:forEach items="${requestScope.typDrzwi}" var="typDrzwi">
                    <option value="${typDrzwi}">${typDrzwi}</option>
                </c:forEach>
            </select>
        </div>
        <button class="form-control btn btn-danger colored-red" type="submit">Wyślij pomiar</button>
    </form>
</div>

</body>
</html>
