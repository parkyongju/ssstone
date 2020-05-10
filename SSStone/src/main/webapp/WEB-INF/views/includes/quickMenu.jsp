<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

	<style type="text/css">
		#STATICMENU{
			margin: 0pt;
			padding: 0pt;
			position: absolute;
			right: 0px;
			top: 0px;
		}	
		
		#floatdiv{
			position: fixed;
			_position: absolute;
			_z-index: -1;
			width: 170px;
			overflow: hidden;
			right: 0px;
			bottom: 60px;
			background-color: transparent;
			margin: 0;
			padding: 0;
			border: 1px;
		}
		
		#floatdiv ul{
			list-style: none;
		}
		
		#floatdiv li{
			margin-bottom: 2px;
			text-align: center;
		}
		
		#floatdiv a{
			color: #5D5D5D;
			border: 0;
			text-decoration: none;
			display: block;
		}
		
		#floatdiv a:HOVER, floatdiv .menu {
			background-color: #5D5D5D;
			color: #fff
		}
		
		#floatdiv .menu, #floatdiv .last{
			margin-bottom: 0px;
		}
	</style>
	</head>
	
	<div onload="InitializeStaticMenu">
	
		<div id="floatdiv">
			<ul>
				<li class="menu">
					<a id="top" href="#up" title="TOP">
						<i class="fe fe-chevrons-up"></i>
					</a>
					<a id="bottom" href="#down" title="DOWN">
						<i class="fe fe-chevrons-down"></i>
					</a>
				</li>	
			</ul>
		</div>
	
		
	</div>

	<script type="text/javascript">

		var stmnLEFT = 10; 
		var stmnGAP1 = 0; 
		var stmnGAP2 = 150;
		var stmnBASE = 150;
		var stmnActivateSpeed = 35; 
		var stmnScrollSpeed = 20; 
		var stmnTimer;


	function RefreshStaticMenu() { 

		var stmnStartPoint, stmnEndPoint; 
		stmnStartPoint = parselnt(document.getElementById('STATICMENU').style.top, 10);
		stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2;

	if(stmnEndPoint < stmnGAP1) 
		stmnEndPoint = stmnGAP1;

 	if (stmnStartPoint !=stmnEndPoint) {
		 stmnScrollAmount = Math.ceil(Math.abs(stmnEndPoint - stmnStartPoint)/15);
		document.getElementById('STATICMENU').style.top= parselnt(document.getElementById('STATICMENU').style.top, 10)+((stmnEndPoint < stmnStartPoint)? -stmnScrollAmount:stmnScrollAmount) + 'px';
		stmnRefreshTimer = stmnScrollSpeed;
			}
 	
 	stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed);
	}

	function InitializeStaticMenu() { 
		document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';
		document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + px;
		RefreshStaticMenu();
	}
	</script>
	<script>
	
	$(document).ready(function(){		//퀵메뉴 버튼
		$("#bottom").click(function(e){     
            e.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top+10000}, 500);
		});
		$("#top").click(function(e){            
            e.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top}, 0);
		});
	});
	</script>

