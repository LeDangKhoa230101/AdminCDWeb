<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   
<div class="product-manage">
	<button class="add-product-btn">
		<i class="bi bi-plus"></i>
		Thêm sản phẩm
	</button> 
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
			<tr>
				<td>1</td>
				<td>Product 1 Product 1</td>
				<td>
					<img src="https://cdn.shopify.com/s/files/1/0719/3244/4977/products/mwdyzzepnza4hqeubzwu.png?v=1680023628&width=540" alt="Product 1">
				</td>
				<td>$10.00</td>
				<td>Description of Product 1</td>
				<td>
					<button class="table-btn table-btn-edit">Sữa</button>
				</td>
				<td>
					<button class="table-btn table-btn-close">Xóa</button>
				</td>
				</tr>
		</tbody>
	</table>
							
	<nav aria-label="...">
		<ul class="pagination product-paginate">
			<li class="page-item disabled">
				<a class="page-link" href="#">Previous</a>
			</li>
			<li class="page-item active">
				<a class="page-link" href="#">1</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="#">2</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="#">3</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="#">Next</a>
			</li>
		</ul>
	</nav>
</div>		
					
					
					
								