<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <div class="body">
            <div class="header">
                <div class="index">
                    <h1>게시글 상세 페이지</h1>
                </div>
            </div>
            <hr>
            <%@ include file="../layout/nav.jsp" %>
                <div class="board_box">
                        <div class="board_content">${board.id}</div>
                        <div class="board_content">${board.title}</div>
                    </div>
                    <div class="border_box">
                        ${board.content}
                </div>

                <%@ include file="../layout/footer.jsp" %>