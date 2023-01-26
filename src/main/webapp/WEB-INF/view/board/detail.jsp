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
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati culpa temporibus veniam,
                    excepturi beatae quo nostrum, vero tenetur laborum doloribus inventore eveniet quisquam voluptatum
                    eum itaque hic est labore repellendus!
                    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquam veritatis, repellat adipisci nulla
                    sequi asperiores, ipsam autem fugiat ex dicta facere magnam odio libero provident corrupti quasi
                    quod fugit neque.
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem, ratione aliquam? Voluptatum
                    incidunt neque repudiandae error rem quo ipsam, labore laboriosam hic beatae molestiae. Tempore
                    molestiae laboriosam repellendus doloremque sed?
                    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Doloremque corrupti, impedit deserunt
                    dolorem modi iure et corporis tempora dolores cum, ex quasi error facilis commodi quidem. Quae dolor
                    quisquam deserunt!
                </div>
                <div class="right_box">
                    <form action="/board/${board.id}/updateForm" method="get">
                        <button type="submit">수정하기</button>
                    </form>
                </div>
                <hr>
                <div class="comment_box">
                    <c:forEach items="${commentDtoList}" var="comment">
                        <div class="comment_content">${comment.username}</div>
                        <div class="comment_content">${comment.content}</div>
                    </c:forEach>
                </div>
                <hr>
                <div class="comment_box">
                    <form action="/comment/${board.id}/write" method="post">
                        <textarea name="content" cols="50" rows="3"></textarea>
                        <button type="submit">댓글작성</button>
                    </form>
                </div>

                <%@ include file="../layout/footer.jsp" %>