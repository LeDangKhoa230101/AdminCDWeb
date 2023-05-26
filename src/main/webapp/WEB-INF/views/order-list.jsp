<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="order-manage">
	<h4>Danh sách hóa đơn</h4> 
	<table class="order-table">
		<thead> 
			<tr>
				<th>ID</th>
				<th>Số lượng</th>
				<th>Ngày mua</th>
				<th>Địa chỉ giao hàng</th>
				<th>Tổng tiền</th>
				<th>Trạng thái</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>3</td>
				<td>3/2/2002</td>
				<td>2938 Nguyễn Huệ</td>
				<td>320302 VNĐ</td>
				<td>Hoàn thành</td>
				<td>
					<a href="/orders-detail" class="table-btn table-btn-eye">Xem</a>
				</td>
				<td>
					<button class="table-btn table-order-btn-close">Xóa</button>
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


