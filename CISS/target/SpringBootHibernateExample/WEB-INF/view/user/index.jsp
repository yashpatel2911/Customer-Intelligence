<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html lang="en">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="description" content="Seipkon is a Premium Quality Admin Site Responsive Template" />
      <meta name="keywords" content="admin template, admin, admin dashboard, cms, Seipkon Admin, premium admin templates, responsive admin, panel, software, ui, web app, application" />
      <meta name="author" content="Themescare">
      <!-- Title -->
      <title>Seipkon - Bootstrap Admin Template</title>
      <!-- Favicon -->
      <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/adminResources\image\favicon-32x32.png">
      <!-- Animate CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/animate.min.css">
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css">
      <!-- Font awesome CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/font-awesome.min.css">
      <!-- Themify Icon CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/themify-icons.css">
      <!-- Perfect Scrollbar CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/perfect-scrollbar.min.css">
      <!-- Jvector CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery-jvectormap.css">
      <!-- Daterange CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/daterangepicker.css">
      <!-- Bootstrap-select CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/bootstrap-select.min.css">
      <!-- Summernote CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/summernote.css">
      <!-- Main CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/seipkon.css">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/responsive.css">
   
   
   <script src="<%=request.getContextPath()%>/adminResources/js/highcharts.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/exporting.js"></script>
   
   
   </head>
   <body>
       
      <!-- Start Page Loading -->
      <!--<div id="loader-wrapper">
         <div id="loader"></div>
         <div class="loader-section section-left"></div>
         <div class="loader-section section-right"></div>
      </div>
      <!-- End Page Loading -->
       
      <!-- Wrapper Start -->
      <div class="wrapper">
         <!-- Main Header Start -->
         <header class="main-header">
             
            <!-- Logo Start -->
            <div class="seipkon-logo">
               <a href="index.html">
               <img src="<%=request.getContextPath()%>/adminResources\image\logo.png" alt="logo">
               </a>
            </div>
            <!-- Logo End -->
             
            <!-- Header Top Start -->
            <jsp:include page="header.jsp"></jsp:include>
              <!-- Header Top End -->
             
         </header>
         <!-- Main Header End -->
          
         <!-- Sidebar Start -->
         <jsp:include page="menu.jsp"></jsp:include>
                  <!-- End Sidebar -->
          
         <!-- Right Side Content Start -->
         <section id="content" class="seipkon-content-wrapper">
            <div class="page-content">
               <div class="container-fluid">
                   
                  <!-- Breadcromb Row Start -->
                  <div class="row">
                     <div class="col-md-12">
                        <div class="breadcromb-area">
                           <div class="row">
                              <div class="col-md-6  col-sm-6">
                                 <div class="seipkon-breadcromb-left">
                                    <h3>Dashboard</h3>
                                 </div>
                              </div>
                              <div class="col-md-6 col-sm-6">
                                 <div class="seipkon-breadcromb-right">
                                    <ul>
                                       <li><a href="index.html">home</a></li>
                                       <li>dashboard</li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- End Breadcromb Row -->
                   
                  <!-- Widget Row Start -->
                  <div class="row">
                     
                     <!-- End Col -->
                     <div class="col-md-4">
                        <div id="widget_visitor" class="widget_card alert">
                           <div class="widget_card_header">
                              <span class="widget_close" data-toggle="tooltip" title="Remove" data-dismiss="alert" aria-label="close">
                              <i class="fa fa-times"></i>
                              </span>
                           </div>
                           <div class="widget_card_body">
                              <div class="widget_icon">
                                 <i class="fa fa-eye"></i>
                              </div>
                              <div class="widget_text">
                                 <h3 class="count">12023</h3>
                                 <p>Total Complaint</p>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- End Col -->
                     <div class="col-md-4">
                        <div id="widget_user" class="widget_card alert">
                           <div class="widget_card_header">
                              <span class="widget_close" data-toggle="tooltip" title="Remove" data-dismiss="alert" aria-label="close">
                              <i class="fa fa-times"></i>
                              </span>
                           </div>
                           <div class="widget_card_body">
                              <div class="widget_icon">
                                 <i class="fa fa-users"></i>
                              </div>
                              <div class="widget_text">
                                 <h3 class="count">739</h3>
                                 <p>Pending Complaint</p>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- End Col -->
                     <div class="col-md-4">
                        <div id="widget_profits" class="widget_card alert">
                           <div class="widget_card_header">
                              <span class="widget_close" data-toggle="tooltip" title="Remove" data-dismiss="alert" aria-label="close">
                              <i class="fa fa-times"></i>
                              </span>
                           </div>
                           <div class="widget_card_body">
                              <div class="widget_icon">
                                 <i class="fa fa-flask"></i>
                              </div>
                              <div class="widget_text">
                                 <h3>$<span class="count">2537</span></h3>
                                 <p>Total Feedback</p>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- End Col -->
                  </div>
                  <!-- End Widget Row -->
                   
                   <div class="row">
                   
					<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
					
					<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
					
					
					<c:forEach items="${graphData}" var="j">
					
						<c:forEach items="${j}" var="i" varStatus="k">
						
						<c:if test="${k.count eq 1}">
							<input type="hidden" name="xvalue" value="Angry" />
							<input type="hidden" name="yvalue" value="${i}" />
						</c:if>
						<c:if test="${k.count eq 2}">
							<input type="hidden" name="xvalue" value="Disgust" />
							<input type="hidden" name="yvalue" value="${i}" />
						</c:if>
						<c:if test="${k.count eq 3}">
							<input type="hidden" name="xvalue" value="Fear" />
							<input type="hidden" name="yvalue" value="${i}" />
						</c:if>
						<c:if test="${k.count eq 4}">
							<input type="hidden" name="xvalue" value="Happy" />
							<input type="hidden" name="yvalue" value="${i}" />
						</c:if>
						<c:if test="${k.count eq 5}">
							<input type="hidden" name="xvalue" value="Sad" />
							<input type="hidden" name="yvalue" value="${i}" />
						</c:if>
						<c:if test="${k.count eq 6}">
							<input type="hidden" name="xvalue" value="Surprise" />
							<input type="hidden" name="yvalue" value="${i}" />
						</c:if>
						<c:if test="${k.count eq 7}">
							<input type="hidden" name="xvalue" value="Neutral" />
							<input type="hidden" name="yvalue" value="${i}" />
						</c:if>
						
						</c:forEach>
							
					</c:forEach>
					
                   
                   </div>
                   
                   
                  <!-- Widget Row Start -->
                  
                  <!-- End Widget Row -->
                   
                  <!-- Widget Row Start -->
                  
                  <!-- End Widget Row -->
                   
               </div>
            </div>
             
            <!-- Footer Area Start -->
           <jsp:include page="footer.jsp"></jsp:include>
            <!-- End Footer Area -->
             
         </section>
         <!-- End Right Side Content -->
          
      </div>
      <!-- End Wrapper -->
       
       
       <script>
var xvalue= document.getElementsByName("xvalue");
var xdata = [];
var yvalue= document.getElementsByName("yvalue");
var ydata = [];
for(var i=0;i<xvalue.length;i++)
{
	xdata.push(xvalue[i].value);
	ydata.push(parseFloat(yvalue[i].value));
}
Highcharts.chart({
    chart: {
	renderTo:"container",

        type: 'column'
    },
    title: {
        text: 'Expression Count'
    },
    subtitle: {
        text: ''
    },
    xAxis: {
        categories: xdata,
        crosshair: true
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Count'
        }
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: 'Expression',
        data: ydata

    }]
});
</script>
       
       
       
       
       
       
      <!-- jQuery -->
      <script src="<%=request.getContextPath()%>/adminResources/js/jquery-3.1.0.min.js"></script>
      <!-- Bootstrap JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
      <!-- Bootstrap-select JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-select.min.js"></script>
      <!-- Daterange JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/moment.min.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/daterangepicker.js"></script>
      <!-- Jvector JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/jquery-jvectormap-1.2.2.min.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/jquery-jvectormap-world-mill-en.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/jvector-init.js"></script>
      <!-- Raphael JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/raphael.min.js"></script>
      <!-- Morris JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/morris.min.js"></script>
      <!-- Sparkline JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/jquery.sparkline.js"></script>
      <!-- Chart JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/Chart.js"></script>
      <!-- Datatables -->
      <script src="<%=request.getContextPath()%>/adminResources/js/jquery.dataTables.min.js"></script>
      <!-- Perfect Scrollbar JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/jquery-perfect-scrollbar.min.js"></script>
      <!-- Vue JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/vue.min.js"></script>
      <!-- Summernote JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/summernote.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/custom-summernote.js"></script>
      <!-- Dashboard JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/dashboard.js"></script>
      <!-- Custom JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/seipkon.js"></script>
   </body>
</html>