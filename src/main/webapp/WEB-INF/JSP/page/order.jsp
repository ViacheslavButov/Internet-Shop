<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ishop" tagdir="/WEB-INF/tags"%>
<div id="order">
	<c:if test="${CURRENT_MESSAGE != null }">
		<div class="alert alert-success hidden-print" role="alert">${CURRENT_MESSAGE }</div>
	</c:if>
	<h4 class="text-center">Order # ${order.id }</h4>
	<hr />
	<ishop:product-table items="${order.items }" totalCost="${order.totalCost }" showActionColumn="false" />
	<div class="row hidden-print">
		<div class="col-md-4 col-md-offset-4 col-lg-2 col-lg-offset-5">
			<a href="/iShop/my-orders" class="btn btn-warning btn-block">Go to My orders</a>
		</div>
	</div>
</div>