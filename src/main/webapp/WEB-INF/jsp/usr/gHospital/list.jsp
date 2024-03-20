<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="#{board.code } HOSPITAL LIST"></c:set>
<%@ include file="../common/head.jspf"%>
<style>
section {
	background-color: white;
}
</style>
<section class="mt-8 text-xl px-4">
	<div class="mx-auto overflow-x-auto">
		<div class="mb-4 flex">
			<div class="badge badge-outline">${gHospitalsCount }개</div>
			<div class="flex-grow"></div>
			<form action="">
				<input type="hidden" name="boardId" value="${param.boardId }" />
				<select data-value="${param.searchKeywordTypeCode }" class="select select-bordered select-sm w-full max-w-xs"
					name="searchKeywordTypeCode">
					<option value="hName">병원 명</option>
					<option value="areaName">지역</option>
				</select>
				<input value="${param.searchKeyword }" name="searchKeyword" type="text" placeholder="searchKeyword?"
					class="input-sm input input-bordered w-48 max-w-xs" />
				<button class="btn btn-ghost btn-sm" type="submit">검색</button>
			</form>
		</div>
	</div>
	<div>
	<table class="table-box-1 table" border="1">
		<colgroup>
			<col style="width: 10%" />
			<col style="width: 30%" />
			<col style="width: 20%" />
			<col style="width: 60%" />
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>병원 이름</th>
				<th>지역 이름</th>
				<th>주소</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach var="gHospital" items="${gHospitals }">
				<tr class="hover">
					<td>${gHospital.id }</td>
					<td>${gHospital.hName }</td>
					<td>${gHospital.areaName }</td>
					<td>${gHospital.address }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>

	<!-- 	동적 페이징 -->
	<div class="pagination flex justify-center mt-3">
		<c:set var="paginationLen" value="3" />
		<c:set var="startPage" value="${page -  paginationLen  >= 1 ? page - paginationLen : 1}" />
		<c:set var="endPage" value="${page +  paginationLen  <= pagesCount ? page + paginationLen : pagesCount}" />

		<c:set var="baseUri" value="?boardId=${boardId }" />
		<c:set var="baseUri" value="${baseUri }&searchKeywordTypeCode=${searchKeywordTypeCode}" />
		<c:set var="baseUri" value="${baseUri }&searchKeyword=${searchKeyword}" />

		<c:if test="${startPage > 1 }">
			<a class="btn btn-sm" href="${baseUri }&page=1">1</a>
			<button class="btn btn-sm btn-disabled">...</button>
		</c:if>

		<c:forEach begin="${startPage }" end="${endPage }" var="i">
			<a class="btn btn-sm ${param.page == i ? 'btn-active' : '' }" href="${baseUri }&page=${i }">${i }</a>
		</c:forEach>

		<c:if test="${endPage < pagesCount }">
			<button class="btn btn-sm btn-disabled">...</button>
			<a class="btn btn-sm" href="${baseUri }&page=${pagesCount }">${pagesCount }</a>
		</c:if>

	</div>
</section>



<%@ include file="../common/foot.jspf"%>