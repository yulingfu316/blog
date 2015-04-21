<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div id="header">

	<h1>
		<a href="" id="logo">One-way<span class="gray"> Blog</span></a>
	</h1>
	<h2 id="slogan">One-way life, One-way Blog.</h2>

	<div id="header-account" class="header-account">
	  <c:choose>
	    <c:when test="false">
        <a href="#">yulingfu</a>
      </c:when>
      <c:otherwise>
        <a href="../account/login">Log in</a>&nbsp;|
        <a href="../account/register">Sign up</a>
      </c:otherwise>
	  </c:choose>
	</div>

</div>