<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/style.css" />

</head>
<body>
<%@include file="/WEB-INF/incl/menu.app"%>

<div algin="center">
        <h2><s:message code="consultations.wait"/></h2>
</div>

<div class="container"><br><br>
    <c:forEach var="u" items="${consultationsListStudentZero }">
        <div class="col-md-4" style="width: 1000px";>
            <div class="alert alert-info">
            <div class="panel-body">
                <div class="con_ina">
                <b> <small><c:out value="${u.to_profesor }"/></small></b><br>
                    <c:out value="${u.date }"/> <c:out value="${u.hour }"/>
                    <br> <h4><a href="#"><c:out value="${u.topic }"/></a></h4>
                         <p><c:out value="${u.description }"/></p>
                </div>
            </div>
            </div>
        </div>
    </c:forEach>
</div>




<div algin="center">
        <h2><s:message code="consultations.acceptstudent"/></h2>
</div>

<div class="container"><br><br>
    <c:forEach var="u" items="${consultationsListStudentOne }">
        <div class="col-md-4" style="width: 1000px";>
            <div class="alert alert-success">
            <div class="panel-body">
                <div class="con_ina">
                <b> <small><c:out value="${u.to_profesor }"/></small></b><br>
                    <c:out value="${u.date }"/> <c:out value="${u.hour }"/>
                    <br> <h4><a href="#"><c:out value="${u.topic }"/></a></h4>
                         <p><c:out value="${u.description }"/></p>
                </div>
            </div>
            </div>
        </div>
    </c:forEach>
</div>


<div algin="center">
        <h2><s:message code="consultations.noacceptstudent"/></h2>
</div>


<div class="container"><br><br>
    <c:forEach var="u" items="${consultationsListStudentTwo }">
        <div class="col-md-4" style="width: 1000px";>
            <div class="alert alert-danger">
            <div class="panel-body">
                <div class="con_ina">
                <b> <small><c:out value="${u.to_profesor }"/></small></b><br>
                    <c:out value="${u.date }"/> <c:out value="${u.hour }"/>
                    <br> <h4><a href="#"><c:out value="${u.topic }"/></a></h4>
                         <p><c:out value="${u.description }"/></p>
                         <div id="messageFeedba"><c:out value="${u.messageFeedback }"/></div>
                </div>
            </div>
            </div>
        </div>
    </c:forEach>
</div>


</body>
</html>