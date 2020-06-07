<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">


<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/style.css" />

<!-- Main CSS-->
<link href="/resources/css/maincomment.css" rel="stylesheet" media="all">
</head>


<body>
<%@include file="/WEB-INF/incl/menu.app" %>

<h2><s:message code="notepad.aktualnosc"/></h2>


<div class="container"><br><br>
    <c:forEach var="u" items="${notepadString }">
        <div class="col-md-4" style="width: 1000px";>
            <div class="alert alert-info">
            <div class="panel-body">
                <div class="con_ina">

                         <p><c:out value="${u.content }"/>
                             <a href="notepad/delete/${u.id }">
                                      <img src="/resources/images/delicon.png" width="16" height="16" title="<s:message code="delete.post"/>"/>
                              </a>
                         </p>
            </div>
            </div>
            </div>
        </div>
    </c:forEach>
</div>


<div class="container">
	<div class="row">

	    <div class="col-md-8 col-md-offset-2">

    		<h1>Create Notepad</h1>

    		<form id="notepadForm" action="addnotepad" modelAttribute="notepad"
                  		enctype="multipart/form-data" method="POST">

    		    <div class="form-group">
    		        <textarea rows="5" class="form-control" name="content" ></textarea>
    		    </div>

    		    <div class="form-group">
    		        <p><span class="require">*</span> - required fields</p>
    		    </div>

    		    <div class="form-group">
    		        <button type="submit" class="btn btn-primary">
    		            Create
    		        </button>
    		    </div>

    		</form>+
		</div>
	</div>
</div>


<!-- Jquery JS-->
<script src="/resources/vendor/jquery/jquery.min.js"></script>


<!-- Main JS-->
<script src="/resources/js/global.js"></script>
</body>
<html>