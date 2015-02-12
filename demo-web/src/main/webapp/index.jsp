<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.extremecomponents.org" prefix="ec" %>
<c:set var="ctx" value="${pageContext['request'].contextPath}"/>
<html>
<head>
    <title>JspGrid Demo</title>
    <link rel="stylesheet"
          href="${ctx}/s/vendor/jsp-grid/css/extremecomponents.css">
</head>

<% java.util.List presidents = new java.util.ArrayList(); %>

<% java.util.Map president = new java.util.HashMap(); %>
<% president.put("name", "George Washington"); %>
<% president.put("nickname", "Father of His Country"); %>
<% president.put("term", "1789-1797"); %>
<% presidents.add(president); %>

<% president = new java.util.HashMap(); %>
<% president.put("name", "John Adams"); %>
<% president.put("nickname", "Atlas of Independence"); %>
<% president.put("term", "1797-1801"); %>
<% presidents.add(president); %>

<% president = new java.util.HashMap(); %>
<% president.put("name", "Thomas Jefferson"); %>
<% president.put("nickname", "Man of the People, Sage of Monticello"); %>
<% president.put("term", "1801-09"); %>
<% presidents.add(president); %>

<% president = new java.util.HashMap(); %>
<% president.put("name", "James Madison"); %>
<% president.put("nickname", "Father of the Constitution"); %>
<% president.put("term", "1809-17"); %>
<% presidents.add(president); %>

<% president = new java.util.HashMap(); %>
<% president.put("name", "James Monroe"); %>
<% president.put("nickname", "The Last Cocked Hat, Era-of-Good-Feelings President"); %>
<% president.put("term", "1817-25"); %>
<% presidents.add(president); %>

<% president = new java.util.HashMap(); %>
<% president.put("name", "John Adams"); %>
<% president.put("nickname", "Old Man Eloquent"); %>
<% president.put("term", "1825-29"); %>
<% presidents.add(president); %>

<% request.setAttribute("pres", presidents); %>

<body style="margin:25px;">

<p style="font-family: Verdana;font-size:14px;">
    Congratulations!! You have successfully configured eXtremeTable!
</p>

<br>

<ec:table
        items="pres"
        action="${ctx}/index.jsp"
        title="Presidents"
        width="60%"
        rowsDisplayed="5"
        >
    <ec:exportXls fileName="Test.xls"/>
    <ec:exportPdf fileName="Test.pdf"/>
    <ec:exportCsv fileName="Test.csv"/>
    <ec:row>
        <ec:column property="name"/>
        <ec:column property="nickname"/>
        <ec:column property="term"/>
    </ec:row>
</ec:table>

<br>

<p style="font-family:Verdana;font-size:12px">

    Below is the code that generates the above display.

</p>

<pre class="bodyText"
     style="background-color:#eee;padding:2px;width:60%;font-family: Verdana;font-size:11px;">
	&lt;ec:table 
		items="pres"
		action="${ctx}/index.jsp"
		imagePath="${ctx}/s/vendor/jsp-grid/images/table/*.gif"
		title="Presidents"
		width="60%"
		rowsDisplayed="5"
		&gt;
            &lt;ec:exportXls fileName="Test.xls"/&gt;
            &lt;ec:exportPdf fileName="Test.pdf"/&gt;
            &lt;ec:exportCsv fileName="Test.csv"/&gt;
		&lt;ec:row&gt;
			&lt;ec:column property="name"/&gt;
			&lt;ec:column property="nickname"/&gt;
			&lt;ec:column property="term"/&gt;
		&lt;/ec:row&gt;
	&lt;/ec:table&gt;
</pre>

<br>

<p style="font-family:Verdana;font-size:11px;width:500px">
    Note: if you are not seeing any images then be sure to include the images included with the
    distribution.
    This example assumes that the images are in an /images/table/ directory. You can see this by
    looking at the
    imagePath attribute on the eXtremeTable example. If your images are somewhere else then just
    adjust the
    imagePath.
</p>

</body>
</html>