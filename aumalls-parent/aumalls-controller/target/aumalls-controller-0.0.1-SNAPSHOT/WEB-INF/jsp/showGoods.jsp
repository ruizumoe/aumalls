<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container-fluid">
		<div class="col-12">
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">Invoices</h3>
				</div>
				<div class="table-responsive">
					<table class="table card-table table-vcenter text-nowrap datatable"
						style="text-align: center">
						<thead>
							<tr>
								<th class="w-1">商品编号</th>
								<th>商品名称</th>
								<th>商品价格</th>
								<th>商品数量</th>
								<th>商品图片</th>
								<th>商品类型</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list.list}" var="goods">
								<tr>
									<td><span class="text-muted">${goods.goods_id}</span></td>
									<td><a href="invoice.html" class="text-inherit">${goods.goods_name}</a></td>
									<td>${goods.goods_price}</td>
									<td>${goods.goods_num}</td>
									<td><img alt=""
										src="static/images/${goods.goods_img}"></td>
									<td><c:if test="${goods.goods_type == 4}">化妆品</c:if> <c:if
											test="${goods.goods_type == 5}">保健品</c:if></td>

								</tr>
							</c:forEach>
							
							<tr>
								<td colspan="6">
								<ul class="pagination justify-content-end">
									<c:choose>
										<c:when test="${list.isFirstPage}">
											<li class="page-item disabled"><a class="page-link"
												href="#" tabindex="-1" aria-disabled="true">Previous</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link"
												href="showGoods?pageNum=${list.pageNum-1}" tabindex="-1" aria-disabled="true">Previous</a></li>
										</c:otherwise>
									</c:choose>
									<c:forEach begin="1" end="${list.pages}" var="page">


										<c:choose>
											<c:when test="${list.isFirstPage}">
												<li class="page-item"><a class="page-link" href="showGoods?pageNum=${page}">${page}</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a class="page-link" href="showGoods?pageNum=${page}">${page}</a></li>
											</c:otherwise>
										</c:choose>


									</c:forEach>
									<c:choose>
										<c:when test="${list.isLastPage}">
											<li class="page-item disabled"><a class="page-link"
												href="#" tabindex="-1" aria-disabled="true">Next</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link"
												href="showGoods?pageNum=${list.pageNum+1}"  aria-disabled="true">Next</a></li>
										</c:otherwise>
									</c:choose>
									
								</ul>
								</td>
							</tr>
						</tbody>
					</table>
					<script>
						require([ 'datatables', 'jquery' ], function(datatable,
								$) {
							$('.datatable').DataTable();
						});
					</script>
				</div>
			</div>
		</div>


	</div>
</body>
</html>