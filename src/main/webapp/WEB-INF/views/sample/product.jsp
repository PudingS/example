<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="./includes/header.jsp"%>
<section>
	<!-- <p>Section</p> -->
	<article>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item">작품구하기</li>
						<!-- <li class="breadcrumb-item active">Tables</li> -->
						<li class="breadcrumb-item active">
							<button id="regBtn" type="button" class="btn btn-default float-right">
								글쓰기
							</button>
						</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>글번호</th>
											<th>제목</th>
											<th>작성자</th>
											<th>조회수</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<c:forEach var="item" items="${list}">
												<tr>
													<td>${item.pro_board_id}</td>
													<td>${item.pro_board_title}</td>
													<td>${item.mem_id}</td>
													<%-- <td>${item.pro_board_views}</td> --%>
												</tr>
											</c:forEach>
										</tr>
									</tbody>
								</table>
								<!-- <div class="modal" id="myModal" tabindex="-1" role="dialog">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">Modal title</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<p>Modal body text goes here.</p>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-primary">Save
													changes</button>
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div> -->
								<div class="float-right">
									<ul class="pagination">
										<li class="page-item ${pageMaker.prev==true?'':'disabled'}"><a
											class="page-link" href="${pageMaker.startPage-1 }"
											tabindex="-1">Previous</a></li>
										<c:forEach var="num" begin="${pageMaker.startPage }"
											end="${pageMaker.endPage }">
											<li
												class="page-item ${pageMaker.crt.pageNum==num?'active':''}"><a
												class="page-link" href="${num}">${num}</a></li>
										</c:forEach>
										<li class="page-item ${pageMaker.next==true?'':'disabled'}"><a
											class="page-link" href="${pageMaker.endPage+1 }">Next</a></li>
									</ul>
								</div>

								<form id="actionForm" action="/sample/product" method="get">
									<input type="hidden" name="pageNum"
										value="${pageMaker.crt.pageNum}"> <input type="hidden"
										name="amount" value="${pageMaker.crt.amount}">
								</form>

							</div>
						</div>
					</div>
				</div>
			</main>
	</article>
</section>
<footer>
	<!-- <p>Footer</p> -->
</footer>
</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {

		var cont = document.getElementById("product");
		cont.style.backgroundColor = "#90ee90";

		var title = document.getElementsByTagName("title");
		title[0].innerHTML = "작품구하기";

		setInterval(function() {
			var height = parseInt(window.innerHeight / 100);
			var section = document.getElementsByTagName("section")[0];
			var header = document.getElementsByTagName("header")[0];
			var nav = document.getElementsByTagName("nav")[0];
			var aside = document.getElementsByTagName("aside")[0];
			var footer = document.getElementsByTagName("footer")[0];
			var article = document.getElementsByTagName("article");
			var roomBtn = document.getElementById("roomBtn");

			header.style.height = '' + (height * 10) + 'px';
			nav.style.height = '' + (height * 10) + 'px';
			aside.style.height = '' + (height * 65) + 'px';
			section.style.height = '' + (height * 65) + 'px';
			footer.style.height = '' + (height * 10) + 'px';
			//article.style.height = '' + (height * 55) + 'px';
			section.style.width = '' + window.innerWidth - 240 + 'px';
			roomBtn.style.marginTop = '' + (height * 10) + 'px';
		}, 10);

		$('#roomBtn').on('click', function() {
			document.getElementsByTagName("ul")[1].style.display = 'block';
		});

		var actionForm = $("#actionForm");
		$(".page-item a").on("click", function(e) {
			e.preventDefault();
			console.log("click ");
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});

		$("#regBtn").on("click", function() {
			self.location="/sample/proregister";
		});
		/* checkModal();
		function checkModal() {
			$(".modal-body").html("게시글 등록");
			$("#myModal").modal("show");
		}; */
	});
</script>
</html>
