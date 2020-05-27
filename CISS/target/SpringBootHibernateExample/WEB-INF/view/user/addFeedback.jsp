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
      <!-- Toggles CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/toggles-full.css">
      <!-- Select2 CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/select2.min.css">
      <!-- Color Picker CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/bootstrap-colorpicker.min.css">
      <!-- Main CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/seipkon.css">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/responsive.css">
      
      <style type="text/css">

.rating {
    float:left;
}

/* :not(:checked) is a filter, so that browsers that don’t support :checked don’t 
   follow these rules. Every browser that supports :checked also supports :not(), so
   it doesn’t make the test unnecessarily selective */
.rating:not(:checked) > input {
    position:absolute;
    top:-9999px;
    clip:rect(0,0,0,0);
}

.rating:not(:checked) > label {
    float:right;
    width:2em;
    padding:0 .1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:200%;
    line-height:1.2;
    color:#ddd;
    text-shadow:1px 1px #bbb, 2px 2px #666, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:before {
    content: ' ';
}

.rating > input:checked ~ label {
    color: #f70;
    text-shadow:1px 1px #c60, 2px 2px #940, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:hover,
.rating:not(:checked) > label:hover ~ label {
    color: gold;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > input:checked + label:hover,
.rating > input:checked + label:hover ~ label,
.rating > input:checked ~ label:hover,
.rating > input:checked ~ label:hover ~ label,
.rating > label:hover ~ input:checked ~ label {
    color: #ea0;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > label:active {
    position:relative;
    top:2px;
    left:2px;
}

</style>
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
               <img src="<%=request.getContextPath()%>/adminResources\image\logo.png">
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
                              <div class="col-md-6 col-sm-6">
                                 <div class="seipkon-breadcromb-left">
                                    <h3>Manage Feedback</h3>
                                 </div>
                              </div>
                              <div class="col-md-6 col-sm-6">
                                 <div class="seipkon-breadcromb-right">
                                    <ul>
                                       <li><a href="index.html">home</a></li>
                                       <li>Manage Feedback</li>
                                       <li>Feedback</li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- End Breadcromb Row -->
                   
                  <!-- Validation Form Row Start -->
                  <div class="row">
                     <div class="col-md-12">
                        <div class="page-box">
                           <div class="form-example">
                              <h3>Feedback</h3>
                              <div class="form-validation-box">
                                 <div class="form-wrap">
                                   <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
                                            
                                             <f:form class="needs-validation" action="insertRating" method="post" modelAttribute="feedbackVO" novalidate="">
                                       <div class="row">
                                       
                                          <div class="col-md-6">
                                          
                                             <div class="rating">
                                                
                                                <f:radiobutton id="star5" path="rating" value="5" /><label for="star5" title="Rocks!"><span class="fa fa-star checked"></span></label>
    														<f:radiobutton id="star4" path="rating" value="4" /><label for="star4" title="Pretty good"><span class="fa fa-star checked"></span></label>
														    <f:radiobutton id="star3" path="rating" value="3" /><label for="star3" title="Meh"><span class="fa fa-star checked"></span></label>
														    <f:radiobutton id="star2" path="rating" value="2" /><label for="star2" title="Kinda bad"><span class="fa fa-star checked"></span></label>
														    <f:radiobutton id="star1" path="rating" value="1" /><label for="star1" title="Sucks big time"><span class="fa fa-star checked"></span></label>
                                             </div>
                                          </div>
                                		</div>
                                       <div class="row" style="margin-top: 3%">
                                          <div class="col-md-12">
                                             <div class="form-group">
                                                <label class="control-label">Comments:</label>
                                                <f:textarea placeholder="Enter comments here" path="feedBack" class="form-control" required="required" ></f:textarea>
                                             </div>
                                             </div>
                                             </div>
                                          
                                       <div class="row">
                                          <div class="col-md-12">
                                             <div class="form-group">
                                                <div class="row">
                                                   <div class="col-md-12">
                                                      <div class="form-layout-submit">
                                                         <button type="submit" class="btn btn-info" >Submit</button>
                                                         <button type="submit" class="btn btn-danger">cancel</button>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </f:form>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- End Validation Form Row -->
                   
               </div>
            </div>
             
            <!-- Footer Area Start -->
           <jsp:include page="footer.jsp"></jsp:include>
            <!-- End Footer Area -->
             
         </section>
         <!-- End Right Side Content -->
          
      </div>
      <!-- End Wrapper -->
       
       
      <!-- jQuery -->
      <script src="<%=request.getContextPath()%>/adminResources/js/jquery-3.1.0.min.js"></script>
      <!-- Bootstrap JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
      <!-- Perfect Scrollbar JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/jquery-perfect-scrollbar.min.js"></script>
      <!-- Toggles JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/jquery.maskedinput.min.js"></script>
      <!-- Select2 JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/select2.full.js"></script>
      <!-- Jquery parsley JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/parsley.min.js"></script>
      <!-- Custom JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/seipkon.js"></script>
   </body>
</html>

