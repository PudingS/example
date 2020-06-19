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
								<li class="breadcrumb-item">작품구하기-게시글</li>
								<!-- 			<li class="breadcrumb-item active">Tables</li> -->
							</ol>
							<div class="card mb-4">
								<div class="card-body">
									<div class="table-responsive">
											<div class="form-group">
												<label>글번호</label>
												<input class="form-control" name="pro_board_id" value="<c:out value='${proDTO.pro_board_id}'/>" readonly>
											</div>
											<div class="form-group">
												<label>작성자</label>
												<input class="form-control" name="mem_id" value="<c:out value='${proDTO.mem_id}' />" readonly>
											</div>
											<div class="form-group">
												<label>제목</label>
												<input class="form-control" name="pro_board_title" value="<c:out value='${proDTO.pro_board_title}' />" readonly>
											</div>
											<div class="form-group">
												<label>내용</label>
												<textarea class="form-control" rows="3" name="pro_board_cont" readonly><c:out value="${proDTO.pro_board_cont}" /></textarea>
											</div>
											<button data-oper="modify" class="btn btn-info">수정</button>
											<button data-oper="product" class="btn btn-info">돌아가기</button>
									</div>
								</div>
							</div>
						</div>
					</main>
			</article>
		</section>