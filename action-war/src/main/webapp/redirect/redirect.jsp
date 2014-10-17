<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Redirecting...</title>
</head>
<body>
<script type="text/javascript">
    var thing;
    <c:forEach items="${model.pixels}" var="pixel" >
    thing = document.createElement('${fn:toLowerCase(pixel.type)}');
    thing.src = '${pixel.pixel}';
    <c:if test="${pixel.type eq 'Img' or pixel.type eq 'Iframe'}">
    thing.width="1";
    thing.height="1";
    </c:if>
    document.body.appendChild(thing);
    </c:forEach>
</script>
We're just loading the page for you, please click <a href="${model.redirect}">here</a> if you have not been redirected in 3 seconds.
<script>
    window.onload = function(){
        window.location.replace('${model.redirect}');
    }
</script>
</body>
</html>
