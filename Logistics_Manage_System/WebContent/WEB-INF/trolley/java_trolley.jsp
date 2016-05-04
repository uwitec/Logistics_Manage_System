<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- CSS 样式 -->
<link rel="stylesheet" href="static/css/trolley/shopping_trolley.css">
<link rel="stylesheet" href="static/css/trolley/trolley_style.css">
<link rel="stylesheet" href="static/css/trolley/add_atyle.css">
<link rel="stylesheet" href="static/css/trolley/jquery.spinner.css">

<link rel="stylesheet" href="static/css/bootstrap/bootstrap.min.css">

<!-- JS 部分引用 -->
<script type="text/javascript" src="static/js/lib/jQuery/jquery.js"></script>
<script type="text/javascript" src="static/js/trolley/jquery-ui.min.js"></script>
<script type="text/javascript" src="static/js/trolley/jquery.spinner.js"></script>
<script type="text/javascript" src="static/js/trolley/jquery.imagezoom.min.js"></script>


</head>
<body>

	<jsp:include page="../base/nav_content.jsp"></jsp:include>
	
	<%
		Thread.sleep(1500);
	 %>

	<div class="box">

		<div class="tb-booth tb-pic tb-s310">
			<a href="image/book/big/java/1.jpg"><img
				src="image/book/mid/java/1.jpg" alt="java"
				rel="image/book/big/java/1.jpg" class="jqzoom" /> </a>
		</div>

		<ul class="tb-thumb" id="thumblist">
			<li class="tb-selected">
				<div class="tb-pic tb-s40">
					<a href="javascript:void(0)"> <img
						src="image/book/small/java/1.jpg" mid="image/book/mid/java/1.jpg"
						big="image/book/big/java/1.jpg"> </a>
				</div></li>

			<li><div class="tb-pic tb-s40">
					<a href="javascript:void(0)"><img
						src="image/book/small/java/01.jpg"
						mid="image/book/mid/java/01.jpg" big="image/book/big/java/01.jpg">
					</a>
				</div></li>

			<li><div class="tb-pic tb-s40">
					<a href="javascript:void(0)"><img
						src="image/book/small/java/001.jpg"
						mid="image/book/mid/java/001.jpg"
						big="image/book/big/java/001.jpg"> </a>
				</div></li>

		</ul>

	</div>
	<form id="shopping-form" action="#" method="post">
		<div class="wrapper" id="computer">
			<h1
				style="padding-bottom: .2em; line-height: 1;
          		font-size: 16px; font-weight: 700;
          		color: #000; font-family: "microsoftyahei";">
          		Java编程思想第4版/第四版中文版/thinkinginjava中文版/java编程/java语言/计算机教材/java书
          	</h1>
			<a href="shopping_info.jsp"> <span class="car"><i
					class="shopping-cart"></i> </span> </a>

			<div class="clear"></div>

			<div id="quantity">
				<center>
					<input name="quantity" type="text" class="spinnerExample" />
				</center>
			</div>

			<!-- items -->
			<div class="items">
				<!-- single item -->
				<div class="item">
					<h3>请核对购物信息 ：</h3>
					<hr>
					<p>
						价格 ： RMB : 99 <input name="price" value="99" type="hidden" /> <input
							name="action" value="trolley" type="hidden" /> <input
							name="bookname" value="JAVA" type="hidden" />
					</p>
					<button id="buy">购买</button>
					<button class="add-to-cart" type="button">加入购物车</button>
				</div>
				<!--/ single item -->
			</div>
			<!--/ items -->
		</div>
	</form>
	<script type="text/javascript" src="static/js/trolley/shopping_trolley.js"></script>
	<script type="text/javascript">
		$('.add-to-cart').on('click', function() {
			var cart = $('.shopping-cart');
			setTimeout(function() {
				cart.effect('shake', {
					times : 2
				}, 200);
			}, 500);
			$('#shopping-form').submit();
		});
	</script>
</body>

</html>
