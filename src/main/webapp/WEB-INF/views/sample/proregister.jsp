<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="./includes/header.jsp" %>
<section>
			<!-- <p>Section</p> -->
			<article>
				<div id="layoutSidenav_content">
					<main>
						<div class="container-fluid">
							<ol class="breadcrumb mb-4">
								<li class="breadcrumb-item">작품구하기-글쓰기</li>
								<!-- 			<li class="breadcrumb-item active">Tables</li> -->
							</ol>
							<div class="card mb-4">
								<div class="card-body">
									<div class="table-responsive">
										<form action="/sample/proregister" method="post">
											<div class="form-group">
												<label>작성자</label>
												<input class="form-control" name="mem_id">
											</div>
											<div class="form-group">
												<label>제목</label>
												<input class="form-control" name="pro_board_title">
											</div>
											<div class="form-group">
												<label>내용</label>
												<textarea class="form-control" rows="3" name="pro_board_cont"></textarea>
											</div>
											<button type="submit" class="btn btn-info">저장</button>
											<button type="reset" class="btn btn-info">리셋</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</main>
			</article>
		</section>