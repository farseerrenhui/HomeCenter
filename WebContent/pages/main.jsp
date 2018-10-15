<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/vue.js"></script>
<title>HomeCenter-main.jsp</title>
</head>
<body onload="getBooks()">
	<input type="hidden" id="base" value="${pageContext.request.contextPath}" /> 
	首页
	<div id="books">
	  <ol>
	    <book-item
	      v-for="book in books"
	      v-bind:book="book"
	      v-bind:key="book.id">
	    </book-item>
	  </ol>
	</div>
	
	<script type="text/javascript">
		function getBooks() {
			$.ajax({
				url : $("#base").val()+"/getBooks",
				type : "post",
				success : function(result) {
					Vue.component('book-item', {
						  props: ['book'],
						  template: '<p>{{ book.id }}{{ book.name }}{{ book.author }}</p>'
						})
					var app = new Vue({
						  el: '#books',
						  data: {
							  books: JSON.parse(result)
						  }
						})
				},
				error : function(result) {
					alert("error" + result);
				}
			});
		}
	</script>
</body>
</html>