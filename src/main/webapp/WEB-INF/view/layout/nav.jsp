<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
   <div class="nav">
      <c:choose>
         <c:when test="${principal == null}">
            <div class="navcontent"><a href="/login-form">로그인</a></div>
            <div class="navcontent"><a href="/join-form">회원가입</a></div>
         </c:when>

         <c:otherwise>
            <div class="navcontent"><a href="/">홈</a></div>
            <div class="navcontent"><a href="/logout">로그아웃</a></div>
            <div class="navcontent"><a href="/user/update-form">회원수정</a></div>
         </c:otherwise>
      </c:choose>
   </div>