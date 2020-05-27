<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<%@taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="subCategory" value="${subCategoryList}"></c:set> 

<c:set var="sizeOfList" value="${f:length(subCategory)}"></c:set> 


[
	<c:forEach items="${subCategoryList}" var = "i" varStatus="j"> 
		{
			"subcategoryId": "${i.subcategoryId}",
			"subcategoryName": "${i.subcategoryName}"
		}
		
		<c:if test="${j.count ne sizeOfList}">   
		,
		</c:if>
	</c:forEach>
]


	
