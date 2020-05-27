0<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
      <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/adminResources/img/favicon/favicon-32x32.png">
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
      <!-- Main CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/seipkon.css">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/responsive.css">
   </head>
   <body class="body_white_bg">
       
      <!-- Start Page Loading -->
      <!--<div id="loader-wrapper">
         <div id="loader"></div>
         <div class="loader-section section-left"></div>
         <div class="loader-section section-right"></div>
      </div>
      <!-- End Page Loading -->
       
      <!-- Login Page Header Area Start -->
      <div class="seipkon-login-page-header-area">
         <div class="container-fluid">
            <div class="row">
               <div class="col-md-4 col-sm-4">
                  <div class="login-page-logo">
                     <a href="index.html">
                     <img src="<%=request.getContextPath()%>/adminResources\image\logo.png" alt="Seipkon Logo" />
                     </a>
                  </div>
               </div>
               <div class="col-md-8 col-sm-8">
                  <div class="login-page-logo-right">
                     <p>Already have an account? </p>
                     <a href="login.html">Sign in</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- Login Page Header Area End -->
       
      <!-- Login Form Start -->
      <div class="seipkon-login-form-area">
         <div class="container-fluid">
            <div class="row">
               <div class="col-md-4 col-md-offset-4">
                  <div class="login-form-box">
                     <h3>Sign up</h3>
                     
                     
								<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
                                <f:form action="insertRegister" modelAttribute="register" method="post">
                     <div class="form-group">
                           <f:input type="text" path="companyName" placeholder="Company Name" class="form-control" required="required"/>
                        </div>
                        <div class="form-group">
                           <f:input type="email" path="emailId" placeholder="Email Address" class="form-control" required="required"/>
                        </div>
                        <div class="form-group">
                           <f:input type="text" path="companyAddress" placeholder="Company Address" class="form-control" required="required"/>
                        </div>
                         <div class="form-group">
                           <f:input type="text" path="companyContact" placeholder="Contact No." class="form-control" required="required"/>
                        </div>
                         <div class="form-group">
                           <f:input type="text" path="ownerName" placeholder="Owner's Name" class="form-control" required="required"/>
                        </div>
                         <div class="form-group">Gender:
                           <f:radiobutton path="gender" value="male"/>Male
                            <f:radiobutton path="gender" value="female"/>Female
                        </div>
                         <div class="form-group">
                           <f:input type="text" path="owneremailId" placeholder="Owner's Email Address" class="form-control" required="required"/>
                        </div>
                         <div class="form-group">
                           <f:input type="text" path="ownerContact" placeholder="Owner's Contact No." class="form-control" required="required"/>
                        </div>
                        
                        <div class="form-group">
                           <f:input type="email" path="loginVO.username" placeholder="Enter UserName" class="form-control" required="required"/>
                        </div>
                        
                        <div class="form-group">
                           <f:input type="password" path="loginVO.password" placeholder="Choose Password" class="form-control" required="required"/>
                        </div>
                        
                        <div class="form-group form-checkbox">
                           <input type="checkbox" id="chk_2" required >
                           <label class="inline control-label" for="chk_2">I Accept <a href="#">Terms and Conditions</a></label>
                        </div>
                        <div class="form-group">
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="form-layout-submit">
                                    <button type="submit" >sign up</button>
                            
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
      <!-- Login Form End -->
       
      <!-- jQuery -->
      <script src="<%=request.getContextPath()%>/adminResources/js/jquery-3.1.0.min.js"></script>
      <!-- Bootstrap JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
      <!-- Perfect Scrollbar JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/jquery-perfect-scrollbar.min.js"></script>
      <!-- Custom JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/seipkon.js"></script>
   </body>
</html>