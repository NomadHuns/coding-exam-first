<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <div class="body">
            <div class="header">
                <div class="index">
                    <h1>회원정보 수정 페이지</h1>
                </div>
            </div>
            <hr>
            <%@ include file="../layout/nav.jsp" %>
                <div class="content">
                    <form action="/user/update" method="post">
                        <table border="1">
                            <tr>
                                <th>유저네임</th>
                                <td><input type="text" name="username" value="${principal.username}"></td>
                            </tr>
                            <tr>
                                <th>패스워드</th>
                                <td><input type="password" name="password" value="${principal.password}"></td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                                <td><input type="email" name="email" value="${principal.email}"></td>
                            </tr>
                        </table>
                        <button type="submit">회원수정</button>
                    </form>
                </div>

                <%@ include file="../layout/footer.jsp" %>