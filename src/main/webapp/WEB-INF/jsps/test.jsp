<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<jsp:useBean id="timeValue" class="java.util.Date"/>
<html>
<head><title>Servlet vars</title></head>
<body>

<table>
<tr><td colspan="2"><h3>Context</h3></td></tr>
	<tr>
		<td>serverInfo</td>
		<td><c:out value="${pageContext.servletContext.serverInfo}"/></td>
	</tr>
	<tr>
		<td>Servlet API</td>
		<td><c:out value="${pageContext.servletContext.majorVersion}"/>.<c:out value="${pageContext.servletContext.minorVersion}"/></td>
	</tr>
<tr>
	<td>servletContextName</td>
	<td><c:out value="${pageContext.servletContext.servletContextName}"/></td>
</tr>

<tr><td>&nbsp;</td></tr>
<tr><td colspan="2"><h3>Request</h3></td></tr>
<tr>
	<td>protocol</td>
	<td><c:out value="${pageContext.request.protocol}"/></td>
</tr>
<tr>
	<td>scheme</td>
	<td><c:out value="${pageContext.request.scheme}"/></td>
</tr>
<tr>
	<td>secure</td>
	<td><c:out value="${pageContext.request.secure}"/></td>
</tr>
<tr>
	<td>serverName</td>
	<td><c:out value="${pageContext.request.serverName}"/></td>
</tr>
<tr>
	<td>serverPort</td>
	<td><c:out value="${pageContext.request.serverPort}"/></td>
</tr>

<tr><td>&nbsp;</td></tr>
<tr>
	<td>remoteAddr</td>
	<td><c:out value="${pageContext.request.remoteAddr}"/></td>
</tr>
<tr>
	<td>remoteHost</td>
	<td><c:out value="${pageContext.request.remoteHost}"/></td>
</tr>
<tr>
	<td>contentType</td>
	<td><c:out value="${pageContext.request.contentType}"/></td>
</tr>
<tr>
	<td>characterEncoding</td>
	<td><c:out value="${pageContext.request.characterEncoding}"/></td>
</tr>
<tr>
	<td>locale</td>
	<td><c:out value="${pageContext.request.locale}"/></td>
</tr>
<tr>
	<td>locales</td>
	<td><c:forEach items="${pageContext.request.locales}" var="i">
		${i}
	</c:forEach></td>
</tr>

<tr><td>&nbsp;</td></tr>
<tr><td colspan="2"><h3>Request Headers</h3></td></tr>
<c:forEach items="${headerValues}" var="hv">
	<c:forEach items="${hv.value}" var="value">
		<tr>
			<td><c:out value="${hv.key}"/></td>
			<td><c:out value="${value}"/></td>
		</tr>
	</c:forEach>
	<c:if test="${empty hv.value}">
		<tr>
			<td><c:out value="${hv.key}"/></td>
			<td></td>
		</tr>
	</c:if>
</c:forEach>

<tr><td>&nbsp;</td></tr>
<tr><td colspan="2"><h3>Response</h3></td></tr>
<tr>
	<td>bufferSize</td>
	<td><c:out value="${pageContext.response.bufferSize}"/></td>
</tr>
<tr>
	<td>characterEncoding</td>
	<td><c:out value="${pageContext.response.characterEncoding}"/></td>
</tr>
<tr>
	<td>locale</td>
	<td><c:out value="${pageContext.response.locale}"/></td>
</tr>
<tr>
	<td>committed</td>
	<td><c:out value="${pageContext.response.committed}"/></td>
</tr>

<tr><td>&nbsp;</td></tr>
<tr><td colspan="2"><h3>Session</h3></td></tr>
<tr>
	<td>id</td>
	<td><c:out value="${pageContext.session.id}"/></td>
</tr>
<tr>
	<td>creationTime</td>
	<c:set target="${timeValue}" value="${pageContext.session.creationTime}" property="time"/>
	<td><fmt:formatDate value="${timeValue}" type="both" dateStyle="medium" /></td>
</tr>
<tr>
	<td>lastAccessedTime</td>
	<c:set target="${timeValue}" value="${pageContext.session.lastAccessedTime}" property="time"/>
	<td><fmt:formatDate value="${timeValue}" type="both" dateStyle="medium" /></td>
</tr>
<tr>
	<td>maxInactiveInterval</td>
	<td><c:out value="${pageContext.session.maxInactiveInterval}"/></td>
</tr>

</table>
</body>
</html>
