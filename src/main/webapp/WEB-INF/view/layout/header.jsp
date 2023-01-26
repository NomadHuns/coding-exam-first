<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <style>
                .header {
                    display: flex;
                    justify-content: center;
                }

                .footer {
                    display: flex;
                    justify-content: center;
                }

                .nav {
                    display: flex;
                    justify-content: center;
                }

                .navcontent {
                    padding: 5px;
                }

                .content {
                    display: flex;
                    justify-content: center;
                }

                .board_box {
                    display: grid;
                    grid-template-columns: 1fr 10fr;
                }

                .border_box {
                    border: 1px solid;
                }

                .board_content {
                    border: 1px solid;
                    display: flex;
                    justify-content: center;
                }
            </style>
        </head>

        <body>