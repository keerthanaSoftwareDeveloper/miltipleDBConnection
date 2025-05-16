<%--
  Created by IntelliJ IDEA.
  User: m865
  Date: 12/12/2022
  Time: 10:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<style>
    .item1{
        grid-area: header;
    }
    .item2{
      grid-area: menu;
    }
    .item3{
        grid-auto-rows: 100px;
        grid-auto-columns: 100px;
        grid-area: main;
    }

    .item5{
        grid-area: footer;
    }




    .grid-container{
        display: grid;
      grid-template-areas: 'header header header header header header'
    'menu main main main main main'
    'menu footer footer footer footer footer';
        gap: 5px;
      background-color: #2196F3;
       padding: 10px;
    }

    .grid-container > div  {
    background-color: rgba(255, 255, 255, 0.8);
    text-align: center;
    padding: 20px 0;
    font-size: 30px;
        width: 100%;
        /*height:100%;*/
}
</style>
</head>
<body>
<div class="grid-container">
    <div class="item1">Header</div>
    <div class="item2">Menu</div>
    <div class="item3">Main  </div>

    <div class="item5">Footer</div>
</div>
</body>
</html>
<hr>
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6"></div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="dashBoard">Home</a></li>
                    <li class="breadcrumb-item active">Operators Search</li>
                </ol>
            </div>
        </div>
    </div>
</section>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <style>--%>
<%--        .item1 { grid-area: header; }--%>
<%--        .item2 { grid-area: menu; }--%>
<%--        .item3 { grid-area: main; }--%>
<%--        .item4 { grid-area: right; }--%>
<%--        .item5 { grid-area: footer; }--%>

<%--        .grid-container {--%>
<%--            display: grid;--%>
<%--            grid-template-areas:--%>
<%--    'header header header header header header'--%>
<%--    'menu main main main right right'--%>
<%--    'menu main main main footer footer';--%>
<%--            gap: 5px;--%>
<%--            background-color: #2196F3;--%>
<%--            padding: 10px;--%>
<%--        }--%>

<%--        .grid-container > div {--%>
<%--            background-color: rgba(255, 255, 255, 0.8);--%>
<%--            text-align: center;--%>
<%--            padding: 20px 0;--%>
<%--            font-size: 30px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<h1>Grid Layout</h1>--%>

<%--<p>This grid layout contains six columns and three rows:</p>--%>

<%--<div class="grid-container">--%>
<%--    <div class="item1">Header</div>--%>
<%--    <div class="item2">Menu</div>--%>
<%--    <div class="item3">Main</div>--%>
<%--    <div class="item4">Right</div>--%>
<%--    <div class="item5">Footer</div>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>
