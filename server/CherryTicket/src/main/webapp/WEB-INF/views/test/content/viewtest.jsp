<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 프리즘 쓰지는 않았지만 보류 -->
<link rel="stylesheet" href="/spring/resources/css/prism.css">
<script src="/spring/resources/js/prism.js"></script>


<style>
	.table > th {
		width: 150px;
	}
	.table > td {
		width : 450px;
	}
	pre {
		width : 630px;
	}
</style>


<div class="content">
		
		<!-- https://prismjs.com/index.html#basic-usage -->
		<table class="table table-bordered">
			<tr>
				<th>번호</th>
				<td>${dto.seq}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${dto.name}</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>${dto.address}</td>
			</tr>
		</table>
		 
		 
		
	
</div>
		