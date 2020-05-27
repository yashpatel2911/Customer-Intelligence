<aside class="seipkon-main-sidebar">
            <nav id="sidebar">
               <!-- Sidebar Profile Start -->
               <div class="sidebar-profile clearfix">
                  <div class="profile-avatar">
                     <img src="<%=request.getContextPath()%>/adminResources\image\avatar.jpg" alt="profile" />
                  </div>
                  <div class="profile-info">
                     <p>Welcome User !</p>
                  </div>
               </div>
               <!-- Sidebar Profile End -->
                
               <!-- Menu Section Start -->
               <div class="menu-section">
                  <h3>General</h3>
                  <ul class="list-unstyled components">
                     <li class="active">
                        <a href="index.html">
                        <i class="fa fa-dashboard"></i>
                        Home
                        </a>
                     </li>
                     <li>
                        <a href="#ecommerce" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-shopping-cart"></i>
                        Manage Product
                        </a>
                        <ul class="collapse list-unstyled" id="ecommerce">
                           <li><a href="loadProduct.html">add product</a></li>
                           <li><a href="searchProduct">view product</a></li>
                           <!-- <li><a href="edit-product.html">Edit product</a></li>
                           <li><a href="order-list-product.html">product order list</a></li> -->
                        </ul>
                     </li>
                    
                      <li>
                        <a href="#apps" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-th"></i>
                        Manage Campaign
                        </a>
                        <ul class="collapse list-unstyled" id="apps">
                           <li><a href="loadCampaign">add campaign</a></li>
                           <li><a href="searchCampaign">view campaign</a></li>
                          
                        </ul>
                     </li>
                     <li>
                        <a href="#charts" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-pie-chart"></i>
                        Manage Detection
                        </a>
                        <ul class="collapse list-unstyled" id="charts">
                          
                            <li><a href="faceDetection">view faceDetection</a></li>
                        </ul>
                     </li>
                      <li>
                        <a href="#ui_elements" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-laptop"></i>
                       Manage Report
                        </a>
                        <ul class="collapse list-unstyled" id="ui_elements">
                          
                           <li><a href="search">view report</a></li>
                     </ul></li>
                    
                           <li>
                              <a href="#icon" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-book"></i>
                              Manage Complaint
                              </a>
                              <ul class="collapse list-unstyled" id="icon">
                                 <li><a href="loadComplaint.html">Add complaint</a></li>
                          <li><a href="viewuserComplaint">View complaint</a></li>
                              </ul>
                           
                     </li>
                     
                     
                      <li>
                        <a href="#feedback" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-pie-chart"></i>
                       Manage Feedback
                        </a>
                        <ul class="collapse list-unstyled" id="feedback">
                            <li><a href="loadFeedback.html">Add feedback</a></li>
                           <li><a href="viewuserFeedback.html">View feedback</a></li>
                          
                        </ul>
                     </li>
                     	<!--  
                     <li>
                        <a href="#createpage" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-file-text-o"></i>
                        Manage City
                        </a>
                        <ul class="collapse list-unstyled" id="createpage">
                           <li><a href="loadCity">add City</a></li>
                           <li><a href="searchCity">view City</a></li>
                          
                        </ul>
                     </li>
                     
                     <li>
                        <a href="#ex_authentication" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-unlock-alt"></i>
						Manage Area
                        </a>
                        <ul class="collapse list-unstyled" id="ex_authentication">
                           <li><a href="loadArea">Add area </a></li>
                           <li><a href="searchArea">view area</a></li>
                         
                        </ul>
                     </li>
                     
                    
                     <li>
                        <a href="#mail" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-envelope"></i>
                        Manage Dataset
                        </a>
                        <ul class="collapse list-unstyled" id="mail">
                           <li><a href="loadDataset">add dataset</a></li>
                           <li><a href="searchDataset">view dataset</a></li>
                      
                        </ul>
                     </li>
                     <li>
                        <a href="#table" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-table"></i>
                        Manage complaint
                        </a>
                        <ul class="collapse list-unstyled" id="table">
                           <li><a href="loadComplaint.html">Add complaint</a></li>
                          <li><a href="viewuserComplaint">View complaint</a></li>
                        </ul>
                     </li>
                     
                     <li>
                        <a href="#ex_components" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-book"></i>
                        Manage Feedback
                        </a>
                        <ul class="collapse list-unstyled" id="ex_components">
                           <li><a href="loadFeedback.html">Add feedback</a></li>
                           <li><a href="viewuserFeedback.html">View feedback</a></li>
                          
                        </ul>
                     </li>
                     
                  </ul>
               </div>
               <!-- Menu Section End -->
                
               <!-- Menu Section Start -->
              <!--  <div class="menu-section">
                  <h3>Forms,Table & widget</h3>
                  <ul class="list-unstyled components">
                     <li>
                        <a href="seipcon_widget.html">
                        <i class="fa fa-th"></i>
                        Widgets
                        </a>
                     </li>
                     <li>
                        <a href="#charts" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-pie-chart"></i>
                        Charts
                        </a>
                        <ul class="collapse list-unstyled" id="charts">
                           <li><a href="chartsjs.html">chart js</a></li>
                           <li><a href="morrris.html">morris</a></li>
                           <li><a href="sparkline.html">sparkline</a></li>
                        </ul>
                     </li>
                     <li>
                        <a href="#forms" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-edit"></i>
                        Forms
                        </a>
                        <ul class="collapse list-unstyled" id="forms">
                           <li><a href="general-form.html">General Form</a></li>
                           <li><a href="advance-components.html">Advance Components</a></li>
                           <li><a href="form-layouts.html">Form layouts</a></li>
                           <li><a href="form-validation.html">form validation</a></li>
                           <li><a href="form-wizards.html">form wizards</a></li>
                        </ul>
                     </li>
                     <li>
                        <a href="#table" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-table"></i>
                        Tables
                        </a>
                        <ul class="collapse list-unstyled" id="table">
                           <li><a href="basic-table.html">basic table</a></li>
                           <li><a href="advance-table.html">table Advance</a></li>
                        </ul>
                     </li>
                  </ul>
               </div>
               Menu Section End
                
               Menu Section Start
               <div class="menu-section">
                  <h3>Extra components</h3>
                  <ul class="list-unstyled components">
                     <li>
                        <a href="#ex_components" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-book"></i>
                        Additional Pages
                        </a>
                        <ul class="collapse list-unstyled" id="ex_components">
                           <li><a href="profile.html">profile page</a></li>
                           <li><a href="invoice.html">Invoice</a></li>
                           <li><a href="gallery.html">gallery</a></li>
                           <li><a href="blank.html">Blank</a></li>
                        </ul>
                     </li>
                     <li>
                        <a href="#ex_authentication" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-unlock-alt"></i>
                        Authentication 
                        </a>
                        <ul class="collapse list-unstyled" id="ex_authentication">
                           <li><a href="login.html">Login</a></li>
                           <li><a href="register.html">Register</a></li>
                           <li><a href="lockscreen.html">Lockscreen</a></li>
                           <li><a href="recover-pass.html">Recover password</a></li>
                        </ul>
                     </li>
                     <li>
                        <a href="#ex_error" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-exclamation-circle"></i>
                        Error Pages 
                        </a>
                        <ul class="collapse list-unstyled" id="ex_error">
                           <li><a href="error-404.html">404 Not Found</a></li>
                           <li><a href="error-505.html">505 Forbidden</a></li>
                           <li><a href="error-500.html">500 Internal Server</a></li>
                           <li><a href="error-503.html">503 Service Unavailable</a></li>
                        </ul>
                     </li>
                     <li>
                        <a href="#ex_multlable" data-toggle="collapse" aria-expanded="false">
                        <i class="fa fa-map-signs"></i>
                        Multilevel
                        </a>
                        <ul class="collapse list-unstyled" id="ex_multlable">
                           <li><a href="#">Level One</a></li>
                           <li>
                              <a href="#ex_multlable_2" data-toggle="collapse" aria-expanded="false">
                              Level One
                              </a>
                              <ul class="collapse list-unstyled" id="ex_multlable_2">
                                 <li><a href="#">Level Two</a></li>
                                 <li>
                                    <a href="#ex_multlable_3" data-toggle="collapse" aria-expanded="false">
                                    Level Two
                                    </a>
                                    <ul class="collapse list-unstyled" id="ex_multlable_3">
                                       <li><a href="#">Level Three</a></li>
                                       <li><a href="#">Level Three</a></li>
                                    </ul>
                                 </li>
                              </ul>
                           </li>
                           <li><a href="#">Level One</a></li>
                        </ul>
                     </li> -->
                  </ul>
               </div>
               <!-- Menu Section End -->
                
            </nav>
         </aside>
