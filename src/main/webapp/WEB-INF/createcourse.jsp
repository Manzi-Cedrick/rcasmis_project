<%--
  Created by IntelliJ IDEA.
  User: Yvette
  Date: 4/22/2023
  Time: 7:01 PM
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<jsp:include page="headeradmin.jsp"><jsp:param
        name="title" value="Create User" />
</jsp:include>
<div id="middle">
    <h2 style="text-align: left;">
        <b>Enter User Details</b>
    </h2>
    <c:if test="${message != null}">
        <fieldset>
            <h3>
                <span style="color: red"> ${message}</span>
            </h3>
        </fieldset>
    </c:if>
    <form action="createcourse.php?page=createcourse" method="post">
        <table>
            <tr>
                <td align="right"><b><t:field mandatory="yes"
                                              text="Course Name"></t:field></b></td>
                <td align="left"><input type="text" size="25" maxlength="50"
                                        name="coursename" id="coursename" /></td>
            </tr>
            <tr>
                <td align="right"><b><t:field mandatory="yes"
                                              text="Course code"></t:field></b></td>
                <td align="left"><input type="text" size="25"
                                        maxlength="50" name="coursecode" id="coursecode" /></td>
            </tr>
            <tr>
                <td align="right"><b>Min Student</b></td>
                <td align="left"><input type="number" size="50" maxlength="50"
                                        name="minStudent" id="minStudent" /></td>
            </tr>
            <tr>
                <td align="right"><b>Max Student</b></td>
                <td align="left"><input type="number" size="50" maxlength="50"
                                        name="maxStudent" id="maxStudent" /></td>
            </tr>
            <tr>
                <td align="right"><b>Start Date</b></td>
                <td align="left"><input type="date" size="50" maxlength="50"
                                        name="start" id="start" /></td>
            </tr>
            <tr>
                <td align="right"><b>End Date</b></td>
                <td align="left"><input type="date" size="50" maxlength="50"
                                        name="end" id="end" /></td>
            </tr>
            <tr>
                <td align="right">&nbsp;</td>
                <td align="left"><input type="submit" name="saveDataCourse"
                                        value="Create Course" /></td>
            </tr>
        </table>
        <a href="listcourse.php?page=courses&&action=list">All courses </a>
    </form>
</div>

<%@ include file="footer.jsp"%>
