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


<script type="text/javascript">
function addMessage(id) {

 $("#form_"+id).toggle();
}
</script>
</head>
<body>
<%@include file="/WEB-INF/incl/menu.app"%>
<div>
    <div algin="center">
            <h2><s:message code="consultations.noaccept"/></h2>
    </div>

    <div class="container"><br><br>
        <c:forEach var="u" items="${consultationsListProfZero }">
            <div class="col-md-4" style="width: 1000px";>
                <div class="alert alert-info">
                <div class="panel-body">
                    <div class="con_ina">
                    <b> <small><c:out value="${u.from_user }"/></small></b><br>
                        <c:out value="${u.date }"/> <c:out value="${u.hour }"/>
                        <br> <h4><a href="#"><c:out value="${u.topic }"/></a></h4>
                             <p><c:out value="${u.description }"/></p>
                    </div>
                </div>
                <div> <button type="button" class="btn btn-success btn-xs btn_inr" onclick="addMessage(${u.id });">Odrzuć!
                          </button>

                    <form id="form_${u.id }" style = "display:none;" action="myconsultationsprof/noakceptation/${u.id }" >
                      <b>Odpowiedź zwrotna:</b> <input type="text" name="messageFeedback" id="messageFeedback" placeholder="Message Feedback">
                            <button type="submit" id="submit">Send</button>
                    </form>

                </div>

                <a href="myconsultationsprof/akceptation/${u.id }" target="blank"><button style="margin-right: 20px" type="button" class="btn btn-success btn-xs btn_inr">Akceptuj!  </button>
                </a>

                </div>
            </div>
        </c:forEach>
    </div>


    <div algin="center">
            <h2><s:message code="consultations.accept"/></h2>
    </div>

    <div class="container"><br><br>
        <c:forEach var="u" items="${consultationsListProfOne }">
            <div class="col-md-4" style="width: 1000px";>
                <div class="alert alert-success">
                <div class="panel-body">
                    <div class="con_ina">
                    <b> <small><c:out value="${u.from_user }"/></small></b><br>
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
        <c:forEach var="u" items="${consultationsListProfTwo }">
            <div class="col-md-4" style="width: 1000px";>
                <div class="alert alert-danger">
                    <div class="panel-body">
                        <div class="con_ina">
                        <b> <small><c:out value="${u.from_user }"/></small></b><br>
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



</div>
<script src="/resources/js/messageFeedback.js"></script>
</body>
</html>