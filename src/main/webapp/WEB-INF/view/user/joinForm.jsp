<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <div class="body">
            <div class="header">
                <div class="index">
                    <h1>회원가입 페이지</h1>
                </div>
            </div>
            <hr>
            <%@ include file="../layout/nav.jsp" %>
                <div class="content">
                    <form action="/join" method="post">
                        <table border="1">
                            <tr>
                                <th>유저네임</th>
                                <td><input type="text" name="username" required></td>
                            </tr>
                            <tr>
                                <th>패스워드</th>
                                <td><input type="password" name="password" required></td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                                <td><input type="email" name="email" required></td>
                            </tr>
                        </table>
                        <button type="submit">회원가입</button>
                    </form>
                </div>

                <%@ include file="../layout/footer.jsp" %>