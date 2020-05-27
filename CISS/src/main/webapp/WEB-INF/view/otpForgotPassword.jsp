<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="description" content="Seipkon is a Premium Quality Admin Site Responsive Template" />
      <meta name="keywords" content="admin template, admin, admin dashboard, cms, Seipkon Admin, premium admin templates, responsive admin, panel, software, ui, web app, application" />
      <meta name="author" content="Themescare">
      <!-- Title -->
      <title>Seipkon - Bootstrap Admin Template</title>
      
       <script type="text/javascript">



function checkPwd()
{
	var pwd = document.getElementById("pwd");
	var cnfpwd = document.getElementById("cnfPwd");
	if(pwd.value!=cnfpwd.value)
	{
		alert("password and confirm password should be same");
		cnfpwd.value="";
	}
	
}


</script>

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
      </div>-->
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
              
                     <a href="register">Sign up</a>
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
                     <h3>Set Password</h3> 
                     <form action="updatePassword" method="post" >
                        <div class="form-group">
                           <input id="otp" type="text" name="username" required="required" placeholder="Enter OTP" class="form-control">
                        </div><span id="otpSpn"></span>   
                        <div class="form-group">
                           <input type="password" name="password" id="pwd" required="required" placeholder="Password" class="form-control">
                        </div>
                        <div class="form-group">
                           <input type="password" name="cnfpassword" required="required" placeholder="Confirm Password" class="form-control id="cnfPwd" onchange="checkPwd()">
                        </div>
                        <div class="form-group form-checkbox">
                           <input type="checkbox" id="chk_2">
                           
                           <p class="lost-pass pull-right">
                       
                           </p>
                        </div>
                        <div class="form-group">
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="form-layout-submit">
                                    <button type="submit" >Submit</button>
                                     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </form>
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
      <script type="text/javascript">
		
		var generatedOTP = <%=session.getAttribute("generatedOTP")%>;
		
		$("#otp").keyup(function(){
			
			
			
			if(generatedOTP == $("#otp").val()){
				$("#otpSpn").html("OTP Matched.");
				$("#otpSpn").css("color" , "green");
				$("#otpSpn").css("font-weight" , "bold");
			}
			else{
				$("#otpSpn").html("Wrong OTP.");
				$("#otpSpn").css("color" , "red");
				$("#otpSpn").css("font-weight" , "bold");
			}
			
		});

</script>
 
   </body>
</html>