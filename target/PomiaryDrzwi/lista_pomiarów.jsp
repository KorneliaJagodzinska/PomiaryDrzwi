<%--
  Created by IntelliJ IDEA.
  User: amen
  Date: 9/12/20
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Lista Pomiarów</title>
    <jsp:include page="part_style.jsp"/>
</head>
<body>
<jsp:include page="part_navigator.jsp"/>

<div class="container">
    <h2>Lista pomiarów</h2>
    <div class="row header-row">
        <div class="col-1">Id</div>
        <div class="col-2">Monter</div>
        <div class="col-1">Klient</div>
        <div class="col-2">Adres klienta</div>
        <div class="col-1">Typ drzwi</div>
        <div class="col-2">Długość drzwi</div>
        <div class="col-2">Szerokość drzwi</div>
        <div class="col-1"></div>
    </div>
    <c:forEach items="${requestScope.lista_pomiarów.jsp}" var="lista_pomiarów_jsp">
        <div class="row car-row marginless">
            <div class="col-1">${pomiar.id}</div>
            <div class="col-2">${pomiar.monter}</div>
            <div class="col-1">${pomiar.klient}</div>
            <div class="col-2">${pomiar.Adres_klienta}</div>
            <div class="col-1">${pomiar.Typ_drzwi}</div>
            <div class="col-2">${pomiar.długość}</div>
            <div class="col-2">${pomiar.szerokość}</div>
            <div class="col-1">
                <a href="${pageContext.request.contextPath}/pomiar_form.jsp?id=${lista_pomiarów_jsp.id}">Details...</a>
            </div>
        </div>
    </c:forEach>
</div>

<jsp:include page="part_footer.jsp"/>
</body>
</html>
