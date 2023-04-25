<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="product-add">
	<div class="product-add--header">
		<h4>Thêm sản phẩm</h4> 
		<button class="product-add-back--btn">Quay lại</button>
	</div>
						
	<form>
		<div class="container">
			<div class="row">
				<div class="col-6">
					<input type="text" class="product-edit-input" placeholder="Tên sản phẩm"> 
				</div>
				<div class="col-6">
					<input type="text" class="product-edit-input" placeholder="Danh mục sản phẩm">
				</div>
			</div>
			<div class="row">
				<div class="col-12"> 
					<div class="product-edit-form--section">
						<div class="product-edit-form--img">
							<img alt="image" id="image-add" src="https://cdn.shopify.com/s/files/1/0719/3244/4977/products/mwdyzzepnza4hqeubzwu.png?v=1680023628&width=540">
						</div>
						<input id="image-add-input" style="display: none;" type="file" accept=".jpg, .jpeg, .png">
						<button onclick="chooseFileAdd()" class="product-edit-form--btn" type="button">Chọn ảnh</button>
						<p class="dinhdang">Định dạng: .JPG, .JPEG, .PNG</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<textarea rows="5" class="product-edit-input" cols="2" placeholder="Mô tả sản phẩm"></textarea>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<input type="number" class="product-edit-input" placeholder="Giá sản phẩm">
				</div>
				<div class="col-6">
					<input type="number" class="product-edit-input" placeholder="Giá khuyến mãi">
				</div>
			</div>
		</div>
		<input type="submit" value="Cập nhật" class="product-edit-form--submit-btn">
	</form>
</div>


