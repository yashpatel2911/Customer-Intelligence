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
                                    <h3>Sub Category</h3>
                                 </div>
                              </div>
                              <div class="col-md-6 col-sm-6">
                                 <div class="seipkon-breadcromb-right">
                                    <ul>
                                       <li><a href="index.html">home</a></li>
                                       <li>Manage Sub Category</li>
                                       <li>Add Sub Category</li>
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
                           <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
								<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
                                
                              <h3>Add Sub Category</h3>
                              <div class="form-validation-box">
                                 <div class="form-wrap">
                                  <f:form class="needs-validation" action="subcategoryUpdate"  method="post" modelAttribute="subcategoryVO"> 
                                        
                       				<f:hidden path="subcategoryId"/>
                                       
										<div class="row">
                                          <div class="col-md-6">
                                             <div class="form-group">
                                                <label class="control-label">Category:</label>
                                                <div id="slWrapper" class="parsley-select wd-250">
                                                  
                                             <f:select path="categoryVO.categoryId" class="form-control">
                                        		<option>Choose Category</option>
                                        		<f:options items="${categoryList}" itemLabel="categoryName" itemValue="categoryId"/>
                                            </f:select>
                                                   
                                                   <div id="slErrorContainer"></div>
                                                </div>
                                             </div>
                                          </div>
                                      </div>
                                                                                 
                                        <div class="row">
                                          <div class="col-md-6">
                                             <div class="form-group">
                                                <label class="control-label">Sub Category Name:</label>
                                                <f:input type="text" path="subcategoryName" id="validationCustom01" placeholder="Enter Category Name" class="form-control"/>
                                             </div>
                                             </div>
                                          </div>
                                         </div>
                                        </div>
                                          
                                        <div class="row">
                                          <div class="col-md-12">
                                             <div class="form-group">
                                                <label class="control-label">Sub Category Description:</label>
                                                <f:textarea path="subcategoryDescription" placeholder="Enter Category Description" class="form-control"/>
                                              
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

