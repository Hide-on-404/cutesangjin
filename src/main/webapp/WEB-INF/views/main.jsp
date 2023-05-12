<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
        <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/mainpage.css">
    <title>Hide on 404</title>
</head>

<body>
    <div id="container">
<%@ include file = "header.jsp" %>
        <div id="slideShow">
            <div id="slides">
                <img src="images/photo-1.jpg" alt style="display: block;">
                <img src="images/photo-2.jpg" alt style="display: none;">
                <img src="images/photo-3.jpg" alt style="display: none;">
                <button id="prev">&lang;</button>
                <button id="next">&rang;</button>
            </div>
        </div>

        <script src="js/main1.js"></script>

        <div class="board_wrap">

            <div class="board_title">
                <strong>404 커뮤니티</strong>
            </div>

            <div class="button">
                <button style="font-size: 20px;">+</button>
            </div>

            <div class="board_write_wrap hide">
                <div class="board_write">
                    <div class="title">
                        <dl>
                            <dt>제목</dt>
                            <dd><input type="text" placeholder="제목 입력"></dd>
                        </dl>
                    </div>
                    <div class="cont">
                        <textarea placeholder="내용 입력"></textarea>
                    </div>
                </div>
                <div class="bt_wrap">
                    <a href="main.html" class="on">등록</a>
                </div>
            </div>

            <div class="tjfaud_01 hide">
                <div class="board_write01">
                    <div class="title01">
                        <dl>
                            <dt>제목</dt>
                            <dd><input type="text" placeholder="제목 입력"></dd>
                        </dl>
                    </div>
                    <div class="cont">
                        <textarea placeholder="내용 입력"></textarea>
                    </div>
                </div>
                <div class="bt_wrap">
                    <a href="main.html" class="on">등록</a>
                </div>
            </div>





            <div class="board_list_wrap">
                <div class="board_list">
                    <script>
                        var a = [{ "title": "주말에 학원 몇시까지 문열어?", "content": "안녕하세요 여러분", "name": "바보건우", "date": "2023.4.21" },
                        { "title": "qkqh", "content": "안녕하세요 여러분2", "name": "익명", "date": "2023.4.24" },
                        { "title": "안녕하세요33", "content": "안녕하세요 여러분3333", "name": "익명", "date": "2023.4.21" },
                        { "title": "안녕하세요3444444", "content": "안녕하세요 444444444", "name": "문상진", "date": "2023.4.18" },
                        { "title": "안녕하세요3444444", "content": "안녕하세요 1231413412321", "name": "문상진", "date": "2023.4.18" }
                        ]

                        for (var i = 0; i < a.length; i++) {

                            
                            document.write("<div>");
                            document.write(i + 1);
                            document.write("<div class='title'>");
                            document.write("<button class='tjfaud' onclick=>");
                            document.write(a[i].title);
                            document.write("</a></div>");
                            document.write("</button>");
                            document.write("<div class='writer'>");
                            document.write(a[i].name);
                            document.write("</a></div>");
                            document.write("<div class='date'>");
                            document.write(a[i].date);
                            document.write("</a></div>");
                            document.write("<div class='count'>");
                            document.write(i + 100);
                            document.write("</a></div>");
                        
                            document.write("</div>");

                            
                        }


                    </script>


                </div>
            </div>
        </div>

<%@ include file = "footer.jsp" %>
    </div>
</body>

</html>