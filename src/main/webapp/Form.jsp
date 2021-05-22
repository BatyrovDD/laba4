<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Калькулятор - Объём прямоугольного параллелепипеда</title>
 
   
  <style type="text/css">
   body {
    font: 10pt Arial, Helvetica, sans-serif; /* Шрифт на веб-странице */
    background: url(https://bitfinding.com/blog/wp-content/uploads/2019/04/cropped-Logo-Bitfinding-color.png); /* Цвет фона */
background-position: center center;
    
margin: 0; /* Убираем отступы */

   }
   h2 {
    font-size: 1.1em; /* Размер шрифта */
    color: #752641; /* Цвет текста */
    margin-bottom: 0; /* Отступ снизу */
   }
   #container {
    width: 900px; /* Ширина макета */
    margin: 0 auto; /* Выравниваем по центру */
    position: relative; /* Относительное позиционирование */
   }
   #header {
    background: #808080; /* Цвет фона */
    font-size: 24pt; /* Размер текста */
    font-weight: bold; /* Жирное начертание */
    color: #FFFFFF; /* Цвет текста */
    padding: 5px; /* Отступы вокруг текста */
   }
   #content {
    margin-right: 200px; /* Отступ справа */
    padding: 10px; /* Поля вокруг текста */
    border-right: 1px dashed #183533; /* Линия справа */
color: #FFFFFF;
   }
   #content p {
    margin-top: 0.3em /* Отступ сверху */
   }
   #sidebar {
    position: absolute; /* Абсолютное позиционирование */
    right: 0; /* Положение от правого края */

    top: 80px; /* Положение от верхнего края */
    width: 190px; /* Ширина */
   }
   #footer {
    background: #808080; /* Цвет фона */
    color: #fff; /* Цвет текста */
    padding: 5px; /* Отступы вокруг текста */
   }
  </style>
 </head>
 <body>
  <div id="container">
   <div id="header">Калькулятор - Объём прямоугольного параллелепипеда</div>
   <div id="content">
<form action="${pageContext.request.contextPath}/JavaCalc" method="post">
<br>
    </form>
     <form action="${pageContext.request.contextPath}/JavaCalc" method="post">
        <label for="first">Первое слагаемое:</label>
        <input type="text" name="first" id="first" value="${first}">
<label for="first">куб. см<br><br></label>
   <label for="second">Второе  слагаемое: </label>
        <input type="text" name="second" id="second" value="${second}">
<label for="first">куб. см<br><br></label>
        
	<label for="third">Третье   слагаемое: </label>
        <input type="text" name="third" id="third" value="${third}">
<label for="first">куб. см<br><br></label>
<br>
        <input type="submit" name="sign" value="Рассчитать">
    </form>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
    
   <div id="sidebar">
    <p>Справочная информация</p>
    <p>Единицы измерения объёма</p>
    <p>1 куб. см = 1000 куб.мм</p>
    <p>1 куб. дм = 1000 куб.см</p>
    <p>1 куб. м = 1000 куб.дм</p>
    <p>1 куб. км = 1000000000 куб.м</p>
   </div>
   <div id="footer">&copy; Выполнили студенты группы ПИ-223:</div>
   <div id="footer">Батыров Д., Мингареев Р., Насыров А. и Погудина М.</div>
  </div>
 </body>
</html>
