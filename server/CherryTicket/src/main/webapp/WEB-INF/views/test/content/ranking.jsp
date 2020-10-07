<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="/spring/resources/css/bootstrap.css">
<script src="/spring/resources/js/bootstrap.js"></script>

<title>Ranking</title>
</head>
   <style>
        * {
            outline: none;
        }

        body { margin: 0 auto; }
        h1 { font-family: "Arial Black"; }
        #main { width: 100%; }
       
        #middle {
            /* border: 1px solid black; */
            width: 1300px;
            min-height: 3000px;
            margin: 0 auto;
            padding-top: 80px;
        }
        #middle h1 {
            text-align: center;
            font-weight: bold;
            font-size: 40px;
        }

        #tabs {
            /* border: 1px solid black; */
            height: 75px;
            margin-top: 80px;
        }
        #tabMenu {
            width: 1031px;
            margin: 0 auto;
        }
        .tabMenu {
            border: 1px solid #ccc;
            border-bottom: 2px solid black;
            width: 171.4px;
            height: 70px;
            float: left;
            text-align: center;
            padding-top: 25px;
            border-right: none;
            color: black;
            cursor: pointer;
            background-color:#e5e5e5;
            color: #a9a9a9;
        }
        .tabMenu:first-child{
            background-color: white;
            color: black;
            border: 2px solid black;
            border-bottom: 0px;
        }
        
        .tabMenu:last-child{
            border-right: 1px solid #eee;
        }
        .tabss {
            width: 1030px;
            margin: 30px auto;

        }
        .tabss > div > ul {
            width: 300px;
            padding: 0;
            color: #999;
            display: inline-block;
            float: right;
        }

        .tabss > div > ul > li {
            list-style-type: none;
            width: 55px;
            font-size: 16px;
            font-weight: bold;
            display: inline-block;
            padding: 10px 5px;
            margin-left: 10px;
        }
        .tabss > div > ul > li:first-child {
            border-bottom: 3px solid tomato;
            color: black;
        }
        .date {
            position: relative;
            font-size: 30px;
            color: tomato;
            font-weight: bold;
            cursor: pointer;
            border: 0;
            left: 40%;
            width: 250px;
            text-align: center;
        }
        .rank-best {
            /* border-bottom: 1px solid #DDD; */
            border-top: 2px solid black;
            height: 600px;
        }
        .rank-best > div {
            width: 33.3%;
            height: 100%;
            border: 1px solid #DDD;
            float: left;
            padding-top: 60px;
            text-align: center;
            background-color: #F6F6F6;
        }
        .rank-best > div img {
            width: 220px;
            height: 320px;
            transition: all .5s;
        }
        .rank-best > div > div:first-child {
            margin: 0 auto;
            width: 220px;
            height: 320px;
            overflow: hidden;
        }
        .rank-best > div > div:nth-child(2) {
            margin: 0 auto;
            width: 230px;
            padding-top: 20px;
            padding-bottom: 20px;
            margin-bottom: 10px;
            border-bottom: 1px solid #EEE;
        }
        .rank-best > div > div:nth-child(2) > p {
            font-weight: bold;
            font-size: 13px;
            margin-bottom: 30px;
        }
        .rank-best > div > div:nth-child(2) > span {
            font-size: 12px;
            color: #888;
        }
        .rank-best > div > div:nth-child(2) + p {
            font-size: 24px;
            font-weight: bold;
        }
        .rank-best > div > div:nth-child(2) + p > span {
            margin-left: 10px;
            color: #FF7D1E;
            font-size: 13px;
            font-weight: bold;
        }
        .rank-best > div > div:nth-child(2) > span > i {
            margin-right: 5px;
        }
        .first {
            background: linear-gradient(45deg, #d6f2c9, #d7cbe0, #fadae1, #eed1af, #cbf0f3);
            background-size: 600% 600%;
            animation: aurora 10s ease infinite;
        }
        @keyframes aurora {
            0% { background-position: left top; }
            25% { background-position: right top; }
            50% { background-position: right bottom; }
            75% { background-position: left bottom; }
            100% { background-position: left top; }
        }
        
        .rank-header {
            border-top: 1px solid #DDD;
            border-bottom: 1px solid #DDD;
            width: 100%;
            height: 32px;
        }
        .tblHeader{
            /* border: 1px solid red; */
            width: 100%;
            height: 30px;
        }
        .tblHeader th {
            text-align: center;
            color: #a5a5a5;
            background-color: transparent;
        }
        .tblHeader th:nth-child(1) {
            width: 60%;
        }
        .tblHeader th:nth-child(2) {
            width: 20%;
        }
        .tblHeader th:last-child { width: auto; }

        .rank-list {
            border-bottom: 2px solid black;
        }
        .rank-list > div {
            width: 100%;
            height: 150px;
            text-align: center;
        }
        .rank-list > div:nth-child(1), .rank-list > div:nth-child(2), .rank-list > div:nth-child(3) {
            background-color: #fffdec;
        } 


        .rank-list > div > div:first-child {
            border-bottom: 1px solid #DDD;
            width: 11%;
            height: 100%;
            float: left;
            padding: 55px 0;
            font-size: 16px;
            font-weight: bold;
            text-decoration: underline;
        }
        .rank-list > div > div:nth-child(2) {
            border-bottom: 1px solid #DDD;
            width: 10%;
            height: 100%;
            float: left;
            padding: 15px 0;
        }
        .rank-list > div > div:nth-child(2) img {
            width: 90px;
            height: 120px;
        }
        .rank-list > div > div:nth-child(3) {
            border-bottom: 1px solid #DDD;
            /* border-right: 2px solid #DDD; */
            width: 36%;
            height: 100%;
            float: left;
            text-align: left;
            padding: 55px 15px;
            font-size: 16px;
        }
        .rank-list > div > div:nth-child(4) {
            border-bottom: 1px solid #DDD;
            width: 25%;
            height: 100%;
            float: left;
            padding: 55px 0;
            font-size: 13px;
            color: #888;
        }
        .rank-list > div > div:last-child {
            border-bottom: 1px solid #DDD;
            width: 18%;
            height: 100%;
            float: left;
            padding: 55px 0;
            font-size: 20px;
            font-weight: bold;
        }
        #goldcrown {
            position: relative;
            left: 160px;
            top: 360px;
            z-index: 1;
        }

    </style>

</head>
<body>

    <div id="main">
<!-------------------------------- 화면 상단부 -------------------------------->
 
<!----------------------------------------- 내용 ----------------------------------------->
        <div id="middle">
            <h1>RANKING</h1>
            
            <div id="tabs">
                <div id="tabMenu">
                    <div class="tabMenu" data-tab="tab1">전체</div>
                    <div class="tabMenu" data-tab="tab2">콘서트</div>
                    <div class="tabMenu" data-tab="tab3">뮤지컬</div>
                    <div class="tabMenu" data-tab="tab4">연극</div>
                    <div class="tabMenu" data-tab="tab5">클래식/무용</div>
                    <div class="tabMenu" data-tab="tab6">전시/행사</div>
                </div>
                <div style="clear: both;"></div>
                <div id="tab1" class="tabss">
                    <div>
                        <input type="text" class="date" readonly>
                        <ul>
                            <li>일간 ↓</li>|
                            <li>주간 ↓</li>|
                            <li>월간 ↓</li>|
                            <li>연간 ↓</li>
                        </ul>
                    </div>
                    <div style="clear:both;"></div>

                    <div class="rank-header">
                        <table class="tblHeader">
                            <tr>
                                <th>공연</th>
                                <th>기간</th>
                                <th>예매율</th>
                            </tr>
                        </table>
                    </div>
                    
                    <div class="rank-list">
                        <div>
                            <div>
                                <p>1위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p><small style="color: #666">예스24스테이지 1관</small>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>2위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>3위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>4위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>5위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>6위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>7위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>8위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>9위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                        <div>
                            <div>
                                <p>10위</p>
                            </div>
                            <div>
                                <img src="./images/ranklist1.jpg">
                            </div>
                            <div>
                                <p>뮤지컬 <어쩌면 해피엔딩> 2020</p>
                            </div>
                            <div>
                                <span>2020.06.30~2020.09.13<br>예스24스테이지 1관</span>
                            </div>
                            <div>
                                <p>8.8%</p>
                            </div>
                        </div>
                      
                    </div>
                </div>
                
            </div>
            
        </div>
<!-------------------------------- 화면 하단부 -------------------------------->
       


    <script>

        //상단 메뉴 css
        $(".menubar").mouseover(function() {
            $(this).css("border-bottom", "5px solid tomato");
        });
        $(".menubar").mouseout(function() {
            $(this).css("border-bottom", "");
        });
        //상단 메뉴 클릭시
        $(".menubar").click(function() {
            location.href = $(this).data("lo");
        });

        //페이지 상단으로 올라가기
        $("#movetop").click(function() {
            //<a> 본연의 기능을 제거
			event.preventDefault();

            $("html,body").animate({
                scrollTop: 0
            }, 1000);
        });
        //페이지 하단으로 내려가기
        $("#movebottom").click(function() {
            //<a> 본연의 기능을 제거
			event.preventDefault();

            $("html,body").animate({
                scrollTop: $(document).height()
            }, 1000);
        });

        //마이페이지 클릭시 이동
        $("#mypage").click(function() {
            location.href = "mypage.html";
        });


        //메뉴 탭기능
        $(".tabss").css("display","none");
        $("#tab1").css("display","block");
        
        $(".tabMenu").click(function(){
            // alert(this);

            $(".tabMenu").css({
                "background-color" : "#e5e5e5",
                "color": "a9a9a9",
                "border" : "1px solid #ccc",
                "border-bottom" : "2px solid black"
            })
            $(this).css({
                "background-color" : "white",
                "color": "black",
                "border": "2px solid black",
                "border-bottom" : "0px"
               
            })

            $(".tabss").css("display","none");
            $('#'+$(this).attr("data-tab")).css("display","block");

        });

        $(document).scroll(function() {
            //메뉴가 시야에서 사라지는 순간 -> 메뉴를 붙박이로 만들기
            if ($(document).scrollTop() > $("#middle").position().top) {
                $("#topmenu").css({
                    width: "100%",
                    "min-width": "0px",
                    position: "fixed",
                    top: "0px",
                    bottom: "",
                    zIndex: "2",
                    "background-color": "white"
                });
                $(window).resize(function() {
                    if($(window).width() < 970) {
                        // console.log($(window).width());
                        $("#topcenter").css("transform", "translate(-100px, 0)");
                    } else {
                        $("#topcenter").css("transform", "translate(0, 0)");
                    }
                });
            };

            //상단 헤더(top)이 눈에 보일때 쯤
            if ($(document).scrollTop() <= $("#middle").position().top) {
                $("#topmenu").css({
                    position: "absolute",
                    "min-width": "1300px",
                    top: "0px",
                    bottom: ""
                });
            }
        });

        //페이지 실행 시 오늘 날짜 로드
        $(document).ready(function() {
            $(".date").datepicker('setDate', 'today');
        });

        //날짜 클릭
        $(".date").datepicker({
            dateFormat: "yy.mm.dd (D)",
            dayNamesShort: [ "일", "월", "화", "수", "목", "금", "토" ]
        });

        // .rank-best > div img:hover {
        //     transform: scale(1.1, 1.1);
        //     transition: all .5s;
        // }

        $(".rank-best > div").mouseover(function() {
            $(this).children().children("img").css("transform", "scale(1.1, 1.1)");
        });
        $(".rank-best > div").mouseout(function() {
            $(this).children().children("img").css("transform", "scale(1, 1)");
        });

    </script>

</html>