<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<div class="product-manage">
	<a href="products-add" class="add-product-btn">
		<i class="bi bi-plus"></i>
		Thêm sản phẩm
	</a> 
	<table class="product-table">
		<thead> 
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Image</th>
				<th>Price</th>
				<th>Description</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${products}" var="product">
				<tr>
					<td>${product.productid}</td>
					<td>${product.productName}</td>
					<td>
						<img src="${product.image}" alt="Product 1">
					</td>
					<td>${product.getPriceFormat()} VNĐ</td>
					<td>${product.description}</td>
					<td>
						<a href="/products-edit/${product.productid}" class="table-btn table-btn-edit">Sữa</a>
					</td>
					<td>
						<button class="table-btn table-btn-close">Xóa</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
				
	<div>
	    <c:if test="${currentPage > 0}">
	      <a class="prev-btn" href="?page=${currentPage - 1}">Previous</a>
	    </c:if>
	    <c:if test="${currentPage < totalPages - 1}">
	      <a class="next-btn" href="?page=${currentPage + 1}">Next</a>
	    </c:if>
  	</div>
</div>		
					
					
					
								