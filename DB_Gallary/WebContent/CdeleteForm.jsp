<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <%@include file="commom.jsp"%>
</head>
<body>
 <%@include file="nav.jsp"%>
    
 <br>
 <br>
 <br>
 <form class="form-horizontal" action="Cdelete.jsp" method="post">
  <div class="form-group">
    <label for="inputEmail3" class="control-label">  삭제할 이름을 선택해주세요</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" name="name">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Sign in</button>
    </div>
  </div>
</form>
 


  <%@include file="footer.jsp"%>
</body>
</html>