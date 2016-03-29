<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>
<%--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1" />
<meta http-equiv="Content-Style-Type" content="text/css" />

<title>
Free Website Templates
</title>

<link rel="stylesheet" href="style1.css" type="text/css" media="screen" />

</head>

<body>
      <div id="body_wrapper">
<div id="container">

	<!-- Start of Page Header -->

	<div id="page_header">
		<h1>Online Shopping</h1>


		<!-- Start of Page Search -->

		
	</div>

	<!-- End of Page Header -->

	<div id="mainmodel">&nbsp;</div>

	<!-- Start of Main Area -->

	<div id="mainarea">
<!-- Start of Navigational Menu -->

		<div id="navmenu">

			<ul>
			<li id="menu_1"><a href="onlineshop.html" title="Home"><span>Home</span></a></li>
			<li id="menu_2"><a href="store.html" title="Store"><span>Store</span></a></li>
			<li id="menu_3"><a href="http://www.freewebsitetemplates.com/" title="FAQ"><span>FAQ</span></a></li>
			<li id="menu_4"><a href="http://www.freewebsitetemplates.com/" title="Resource"><span>Resource</span></a></li>
			<li id="menu_5"><a href="http://www.freewebsitetemplates.com/" title="Contact"><span>Contact</span></a></li>
			</ul>
			<div class="clearthis">&nbsp;</div>
		</div>

		<!-- End of Navigational Menu -->

			
<div id="mainarea_2">

			


			<!-- Start of Main Content -->

			

				<!-- Start of Featured Products -->

				<div id="featured">
                                    The item is added to cart.
					<h2><span>Featured Products</span></h2>
					<p>
<h5>The below item(s) is also suggested which is cost benifit and customer prefered.<h5>
					
                                           				
                                     <a href="store.html">  <font size="+2"><%=request.getAttribute("item")%></font></a>
                                            
                                      </p>
                                        					
                               

				<div class="clearthis">&nbsp;</div>

			</div>
			
			

		

	</div>

	<!-- End of Main Area -->




	<!-- Start of Page Footer -->

	<div id="page_footer">

		
		<div id="footer_links">

			<ul>
			<li><a href="http://www.freewebsitetemplates.com/">Home</a></li>
			<li><a href="http://www.freewebsitetemplates.com/">Store</a></li>
			<li><a href="http://www.freewebsitetemplates.com/">FAQ</a></li>
			<li><a href="http://www.freewebsitetemplates.com/">Resource</a></li>
			<li id="last"><a href="http://www.freewebsitetemplates.com/">Contact</a></li>
			</ul>

		</div>


		<div class="clearthis">&nbsp;</div>
	</div>


</div>
</div>
    </body>
   
</html>