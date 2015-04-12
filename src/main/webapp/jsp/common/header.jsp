<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div id="header">

	<h1 id="logo">
		<spring:message code="name" text="One-way"/><span class="gray"> Blog</span>
	</h1>
	<h2 id="slogan">One-way life, welcome to One-way Blog.</h2>

	<div id="searchform">
		<form method="post" class="search" action="#">
			<p>
				<input name="search_query" class="textbox" type="text"/>
				<input name="search" class="button" type="submit" value="search"/>
			</p>
		</form>
	</div>

</div>