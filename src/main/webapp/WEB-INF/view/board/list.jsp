<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <div class="body">
            <div class="header">
                <div class="index">
                    <h1>게시글 목록 페이지</h1>
                </div>
            </div>
            <hr>
            <%@ include file="../layout/nav.jsp" %>
                <div class="content">
                    <table border="1">
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성일</th>
                        </tr>
                        <c:forEach items="${boardList}" var="board">
                            <tr>
                                <td>${board.id}</td>
                                <td><a href="/board/${board.id}">${board.title}</a></td>
                                <td>${board.createdAt}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
                <div class="content">
                    <form action="/board/write-form" method="get">
                        <button type="submit">게시글작성</button>
                    </form>
                </div>
                <%@ include file="../layout/footer.jsp" %>