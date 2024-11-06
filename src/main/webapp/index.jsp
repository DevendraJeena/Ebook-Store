	<%@ page language="java" contentType="text/html; charset=UTF-8"
   	 pageEncoding="UTF-8"%>
   	 
	<%@ page import="java.sql.Connection" %>
<%@ page import="com.DB.DBconnect" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.StringWriter" %>
   
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook: Index</title>
<%@include file="all_component/allCss.jsp" %>

<style type="text/css">



.back-img{
background: url("img/back-img.jpg");
height: 70vh ;
width: 100% ;
background-size: cover;
background-repeat: no-repeat;
}

.crd-ho:hover{
	background-color:#f7e7e6 ;
}
</style>

</head>

<body>
	<%@include file="all_component/navbar.jsp" %>
		<div class="container-fluid back-img">
				<h2 class="text-center text-danger">eBook-Store</h2>
		</div>
		
		<% Connection conn =DBconnect.getConn();
		out.println(conn);%>
		
	<!-- Start Recent Book -->

<div class="container">
	<h3 class="text-center">Recent Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book11.jpg" style="width:180px; height:200px" class="img-thumblin" >
						<p>Motivating Thoughts</p>
						<p>Swami Vivekananda</p>
						<p>Categories:Recent</p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a> 
								<a href="" class="btn btn-success btn-sm ml-1">view Details</a> 
								<a href="" class="btn btn-danger btn-sm ml-1">100</a> 
							</div>
	
					</div>
				</div>
			</div>
			
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book2.jpg" style="width:180px; height:200px" class="img-thumblin" >
						<p>Learning How To Fly</p>
						<p>A.P.J Abdul Kalam</p>
						<p>Categories:Recent</p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> 
								<a href="" class="btn btn-success btn-sm ml-1">view Details</a> 
								<a href="" class="btn btn-danger btn-sm ml-1">170</a> 
							</div>
	
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book3.jpg" style="width:180px; height:200px" class="img-thumblin" >
						<p>Bhagvad Gita</p>
						<p>Swami Prabhupada</p>
						<p>Categories:Recent</p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> 
								<a href="" class="btn btn-success btn-sm ml-1">view Details</a> 
								<a href="" class="btn btn-danger btn-sm ml-1">300</a> 
							</div>
	
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book4.jpg" style="width:180px; height:200px" class="img-thumblin" >
						<p>Core and Advance Java Blackbook</p>
						<p>Dreamtech Press</p>
						<p>Categories:Recent</p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> 
								<a href="" class="btn btn-success btn-sm ml-1">view Details</a> 
								<a href="" class="btn btn-danger btn-sm ml-1">1180</a> 
							</div>
	
					</div>
				</div>
				
			</div>
		</div>
		
					<div class="text-center mt-1">
							<a href="" class="bt btn-danger btn-sm text-white">View All</a>
					</div>
</div>

<!-- End Recent Book -->


<hr>


	<!-- Start New Book -->

<div class="container">
	<h3 class="text-center">New Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book5.jpg" style="width:180px; height:200px" class="img-thumblin" >
						<p>Understanding Research Methods</p>
						<p>Mildred L.Patten</p>
						<p>Categories:New</p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> 
								<a href="" class="btn btn-success btn-sm ml-1">view Details</a> 
								<a href="" class="btn btn-danger btn-sm ml-1">4399</a> 
							</div>
	
					</div>
				</div>
			</div>
			
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book6.jpg" style="width:180px; height:200px" class="img-thumblin" >
						<p>Why I Am An Atheist</p>
						<p>Bhagat Singh</p>
						<p>Categories:New</p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> 
								<a href="" class="btn btn-success btn-sm ml-1">view Details</a> 
								<a href="" class="btn btn-danger btn-sm ml-1">130</a> 
							</div>
	
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book7.jpg" style="width:180px; height:200px" class="img-thumblin" >
						<p>University Physics with Modern Physics</p>
						<p>Hugh D.Young</p>
						<p>Categories:New</p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> 
								<a href="" class="btn btn-success btn-sm ml-1">view Details</a> 
								<a href="" class="btn btn-danger btn-sm ml-1">1130</a> 
							</div>
	
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book8.jpg" style="width:180px; height:200px" class="img-thumblin" >
						<p>JavaScript:The Definitive Guide</p>
						<p>David Flanagan</p>
						<p>Categories:New</p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> 
								<a href="" class="btn btn-success btn-sm ml-1">view Details</a> 
								<a href="" class="btn btn-danger btn-sm ml-1">2150</a> 
							</div>
	
					</div>
				</div>
				
			</div>
		</div>
		
					<div class="text-center mt-1">
							<a href="" class="bt btn-danger btn-sm text-white">View All</a>
					</div>
</div>

<!-- End New Book -->
<hr>





	<!-- Start old Book -->

<div class="container">
	<h3 class="text-center">Old Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book9.jpg" style="width:180px; height:200px" class="img-thumblin" >
						<p>Phython Progamming </p>
						<p>Mahendra Verma</p>
						<p>Categories:New</p>
							<div class="row ml-4">
								
								<a href="" class="btn btn-success btn-sm ml-2">view Details</a> 
								<a href="" class="btn btn-danger btn-sm ml-1">200</a> 
							</div>
	
					</div>
				</div>
			</div>
			
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book10.jpg" style="width:180px; height:200px" class="img-thumblin" >
						<p>A Monk Who Sold His Ferrari</p>
						<p>Robin Sharma</p>
						<p>Categories:New</p>
							<div class="row ml-4">
								
								<a href="" class="btn btn-success btn-sm ml-2">view Details</a> 
								<a href="" class="btn btn-danger btn-sm ml-1">180</a> 
							</div>
	
	
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book1.jpg" style="width:180px; height:200px" class="img-thumblin" >
						<p>Word Power made easy</p>
						<p>Norman Lewis</p>
						<p>Categories:New</p>
							<div class="row ml-4">
								
								<a href="" class="btn btn-success btn-sm ml-2">view Details</a> 
								<a href="" class="btn btn-danger btn-sm ml-1">140</a> 
							</div>
	
	
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book12.jpg" style="width:180px; height:200px" class="img-thumblin" >
						<p>Advance Java Programming</p>
						<p>Uttam K.Roy</p>
						<p>Categories:New</p>
							<div class="row ml-4">
								
								<a href="" class="btn btn-success btn-sm ml-2">view Details</a> 
								<a href="" class="btn btn-danger btn-sm ml-1">1130</a> 
							</div>
	
	
					</div>
				</div>
				
			</div>
		</div>
		
					<div class="text-center mt-1">
							<a href="" class="bt btn-danger btn-sm text-white">View All</a>
					</div>
</div>

<!-- End old Book -->


<%@include file="all_component/footer.jsp" %>



</body>
</html>