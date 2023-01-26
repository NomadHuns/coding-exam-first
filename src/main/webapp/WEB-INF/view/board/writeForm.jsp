<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <div class="body">
            <div class="header">
                <div class="index">
                    <h1>게시글 작성 페이지</h1>
                </div>
            </div>
            <hr>
            <%@ include file="../layout/nav.jsp" %>
                <form action="/board/write" method="post">
                    <div class="content">
                        <textarea name="title" cols="50" rows="1" placeholder="게시글 제목"></textarea>
                    </div>
                    <div class="content">
                        <textarea name="content" cols="50" rows="10" placeholder="게시글 내용"></textarea>
                    </div>
                    <div class="content">
                        <button type="submit">작성 완료</button>
                    </div>
                </form>
                <%@ include file="../layout/footer.jsp" %>