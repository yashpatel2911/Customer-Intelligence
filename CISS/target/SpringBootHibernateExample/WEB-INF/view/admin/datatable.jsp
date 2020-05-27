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
      <!-- DataTables CSS -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap.min.css" >
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/buttons.bootstrap.min.css" >
      <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/responsive.bootstrap.min.css" >
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
                              <div class="col-md-6 col-sm-6">
                                 <div class="seipkon-breadcromb-left">
                                    <h3>Data table</h3>
                                 </div>
                              </div>
                              <div class="col-md-6 col-sm-6">
                                 <div class="seipkon-breadcromb-right">
                                    <ul>
                                       <li><a href="index.html">home</a></li>
                                       <li>tables</li>
                                       <li>Advance table</li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- End Breadcromb Row -->
                   
                  <!-- Advance Table Row Start -->
                  <div class="row">
                     <div class="col-md-12">
                        <div class="page-box">
                           <div class="datatables-example-heading">
                              <h3>Default Datatable</h3>
                           </div>
                           <p>DataTables has most features enabled by default, so all you need to do to use it with your own tables is to call the construction function: <code>$().DataTable()</code>;</p>
                           <div class="table-responsive advance-table">
                              <table id="datatables_example_1" class="table display table-bordered">
                                 <thead>
                                    <tr>
                                       <th>Name</th>
                                       <th>Position</th>
                                       <th>Office</th>
                                       <th>Age</th>
                                       <th>Start date</th>
                                       <th>Salary</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>Tiger Nixon</td>
                                       <td>System Architect</td>
                                       <td>Edinburgh</td>
                                       <td>61</td>
                                       <td>2011/04/25</td>
                                       <td>$320,800</td>
                                    </tr>
                                    <tr>
                                       <td>Garrett Winters</td>
                                       <td>Accountant</td>
                                       <td>Tokyo</td>
                                       <td>63</td>
                                       <td>2011/07/25</td>
                                       <td>$170,750</td>
                                    </tr>
                                    <tr>
                                       <td>Ashton Cox</td>
                                       <td>Junior Technical Author</td>
                                       <td>San Francisco</td>
                                       <td>66</td>
                                       <td>2009/01/12</td>
                                       <td>$86,000</td>
                                    </tr>
                                    <tr>
                                       <td>Cedric Kelly</td>
                                       <td>Senior Javascript Developer</td>
                                       <td>Edinburgh</td>
                                       <td>22</td>
                                       <td>2012/03/29</td>
                                       <td>$433,060</td>
                                    </tr>
                                    <tr>
                                       <td>Airi Satou</td>
                                       <td>Accountant</td>
                                       <td>Tokyo</td>
                                       <td>33</td>
                                       <td>2008/11/28</td>
                                       <td>$162,700</td>
                                    </tr>
                                    <tr>
                                       <td>Brielle Williamson</td>
                                       <td>Integration Specialist</td>
                                       <td>New York</td>
                                       <td>61</td>
                                       <td>2012/12/02</td>
                                       <td>$372,000</td>
                                    </tr>
                                    <tr>
                                       <td>Herrod Chandler</td>
                                       <td>Sales Assistant</td>
                                       <td>San Francisco</td>
                                       <td>59</td>
                                       <td>2012/08/06</td>
                                       <td>$137,500</td>
                                    </tr>
                                    <tr>
                                       <td>Rhona Davidson</td>
                                       <td>Integration Specialist</td>
                                       <td>Tokyo</td>
                                       <td>55</td>
                                       <td>2010/10/14</td>
                                       <td>$327,900</td>
                                    </tr>
                                    <tr>
                                       <td>Colleen Hurst</td>
                                       <td>Javascript Developer</td>
                                       <td>San Francisco</td>
                                       <td>39</td>
                                       <td>2009/09/15</td>
                                       <td>$205,500</td>
                                    </tr>
                                    <tr>
                                       <td>Sonya Frost</td>
                                       <td>Software Engineer</td>
                                       <td>Edinburgh</td>
                                       <td>23</td>
                                       <td>2008/12/13</td>
                                       <td>$103,600</td>
                                    </tr>
                                    <tr>
                                       <td>Jena Gaines</td>
                                       <td>Office Manager</td>
                                       <td>London</td>
                                       <td>30</td>
                                       <td>2008/12/19</td>
                                       <td>$90,560</td>
                                    </tr>
                                    <tr>
                                       <td>Quinn Flynn</td>
                                       <td>Support Lead</td>
                                       <td>Edinburgh</td>
                                       <td>22</td>
                                       <td>2013/03/03</td>
                                       <td>$342,000</td>
                                    </tr>
                                    <tr>
                                       <td>Charde Marshall</td>
                                       <td>Regional Director</td>
                                       <td>San Francisco</td>
                                       <td>36</td>
                                       <td>2008/10/16</td>
                                       <td>$470,600</td>
                                    </tr>
                                    <tr>
                                       <td>Haley Kennedy</td>
                                       <td>Senior Marketing Designer</td>
                                       <td>London</td>
                                       <td>43</td>
                                       <td>2012/12/18</td>
                                       <td>$313,500</td>
                                    </tr>
                                    <tr>
                                       <td>Tatyana Fitzpatrick</td>
                                       <td>Regional Director</td>
                                       <td>London</td>
                                       <td>19</td>
                                       <td>2010/03/17</td>
                                       <td>$385,750</td>
                                    </tr>
                                    <tr>
                                       <td>Michael Silva</td>
                                       <td>Marketing Designer</td>
                                       <td>London</td>
                                       <td>66</td>
                                       <td>2012/11/27</td>
                                       <td>$198,500</td>
                                    </tr>
                                    <tr>
                                       <td>Paul Byrd</td>
                                       <td>Chief Financial Officer (CFO)</td>
                                       <td>New York</td>
                                       <td>64</td>
                                       <td>2010/06/09</td>
                                       <td>$725,000</td>
                                    </tr>
                                    <tr>
                                       <td>Gloria Little</td>
                                       <td>Systems Administrator</td>
                                       <td>New York</td>
                                       <td>59</td>
                                       <td>2009/04/10</td>
                                       <td>$237,500</td>
                                    </tr>
                                    <tr>
                                       <td>Bradley Greer</td>
                                       <td>Software Engineer</td>
                                       <td>London</td>
                                       <td>41</td>
                                       <td>2012/10/13</td>
                                       <td>$132,000</td>
                                    </tr>
                                    <tr>
                                       <td>Dai Rios</td>
                                       <td>Personnel Lead</td>
                                       <td>Edinburgh</td>
                                       <td>35</td>
                                       <td>2012/09/26</td>
                                       <td>$217,500</td>
                                    </tr>
                                    <tr>
                                       <td>Jenette Caldwell</td>
                                       <td>Development Lead</td>
                                       <td>New York</td>
                                       <td>30</td>
                                       <td>2011/09/03</td>
                                       <td>$345,000</td>
                                    </tr>
                                    <tr>
                                       <td>Yuri Berry</td>
                                       <td>Chief Marketing Officer (CMO)</td>
                                       <td>New York</td>
                                       <td>40</td>
                                       <td>2009/06/25</td>
                                       <td>$675,000</td>
                                    </tr>
                                    <tr>
                                       <td>Caesar Vance</td>
                                       <td>Pre-Sales Support</td>
                                       <td>New York</td>
                                       <td>21</td>
                                       <td>2011/12/12</td>
                                       <td>$106,450</td>
                                    </tr>
                                    <tr>
                                       <td>Doris Wilder</td>
                                       <td>Sales Assistant</td>
                                       <td>Sidney</td>
                                       <td>23</td>
                                       <td>2010/09/20</td>
                                       <td>$85,600</td>
                                    </tr>
                                    <tr>
                                       <td>Angelica Ramos</td>
                                       <td>Chief Executive Officer (CEO)</td>
                                       <td>London</td>
                                       <td>47</td>
                                       <td>2009/10/09</td>
                                       <td>$1,200,000</td>
                                    </tr>
                                    <tr>
                                       <td>Gavin Joyce</td>
                                       <td>Developer</td>
                                       <td>Edinburgh</td>
                                       <td>42</td>
                                       <td>2010/12/22</td>
                                       <td>$92,575</td>
                                    </tr>
                                    <tr>
                                       <td>Jennifer Chang</td>
                                       <td>Regional Director</td>
                                       <td>Singapore</td>
                                       <td>28</td>
                                       <td>2010/11/14</td>
                                       <td>$357,650</td>
                                    </tr>
                                    <tr>
                                       <td>Brenden Wagner</td>
                                       <td>Software Engineer</td>
                                       <td>San Francisco</td>
                                       <td>28</td>
                                       <td>2011/06/07</td>
                                       <td>$206,850</td>
                                    </tr>
                                    <tr>
                                       <td>Fiona Green</td>
                                       <td>Chief Operating Officer (COO)</td>
                                       <td>San Francisco</td>
                                       <td>48</td>
                                       <td>2010/03/11</td>
                                       <td>$850,000</td>
                                    </tr>
                                    <tr>
                                       <td>Shou Itou</td>
                                       <td>Regional Marketing</td>
                                       <td>Tokyo</td>
                                       <td>20</td>
                                       <td>2011/08/14</td>
                                       <td>$163,000</td>
                                    </tr>
                                    <tr>
                                       <td>Michelle House</td>
                                       <td>Integration Specialist</td>
                                       <td>Sidney</td>
                                       <td>37</td>
                                       <td>2011/06/02</td>
                                       <td>$95,400</td>
                                    </tr>
                                    <tr>
                                       <td>Suki Burks</td>
                                       <td>Developer</td>
                                       <td>London</td>
                                       <td>53</td>
                                       <td>2009/10/22</td>
                                       <td>$114,500</td>
                                    </tr>
                                    <tr>
                                       <td>Prescott Bartlett</td>
                                       <td>Technical Author</td>
                                       <td>London</td>
                                       <td>27</td>
                                       <td>2011/05/07</td>
                                       <td>$145,000</td>
                                    </tr>
                                    <tr>
                                       <td>Gavin Cortez</td>
                                       <td>Team Leader</td>
                                       <td>San Francisco</td>
                                       <td>22</td>
                                       <td>2008/10/26</td>
                                       <td>$235,500</td>
                                    </tr>
                                    <tr>
                                       <td>Martena Mccray</td>
                                       <td>Post-Sales support</td>
                                       <td>Edinburgh</td>
                                       <td>46</td>
                                       <td>2011/03/09</td>
                                       <td>$324,050</td>
                                    </tr>
                                    <tr>
                                       <td>Unity Butler</td>
                                       <td>Marketing Designer</td>
                                       <td>San Francisco</td>
                                       <td>47</td>
                                       <td>2009/12/09</td>
                                       <td>$85,675</td>
                                    </tr>
                                    <tr>
                                       <td>Howard Hatfield</td>
                                       <td>Office Manager</td>
                                       <td>San Francisco</td>
                                       <td>51</td>
                                       <td>2008/12/16</td>
                                       <td>$164,500</td>
                                    </tr>
                                    <tr>
                                       <td>Hope Fuentes</td>
                                       <td>Secretary</td>
                                       <td>San Francisco</td>
                                       <td>41</td>
                                       <td>2010/02/12</td>
                                       <td>$109,850</td>
                                    </tr>
                                    <tr>
                                       <td>Vivian Harrell</td>
                                       <td>Financial Controller</td>
                                       <td>San Francisco</td>
                                       <td>62</td>
                                       <td>2009/02/14</td>
                                       <td>$452,500</td>
                                    </tr>
                                    <tr>
                                       <td>Timothy Mooney</td>
                                       <td>Office Manager</td>
                                       <td>London</td>
                                       <td>37</td>
                                       <td>2008/12/11</td>
                                       <td>$136,200</td>
                                    </tr>
                                    <tr>
                                       <td>Jackson Bradshaw</td>
                                       <td>Director</td>
                                       <td>New York</td>
                                       <td>65</td>
                                       <td>2008/09/26</td>
                                       <td>$645,750</td>
                                    </tr>
                                    <tr>
                                       <td>Olivia Liang</td>
                                       <td>Support Engineer</td>
                                       <td>Singapore</td>
                                       <td>64</td>
                                       <td>2011/02/03</td>
                                       <td>$234,500</td>
                                    </tr>
                                    <tr>
                                       <td>Bruno Nash</td>
                                       <td>Software Engineer</td>
                                       <td>London</td>
                                       <td>38</td>
                                       <td>2011/05/03</td>
                                       <td>$163,500</td>
                                    </tr>
                                    <tr>
                                       <td>Sakura Yamamoto</td>
                                       <td>Support Engineer</td>
                                       <td>Tokyo</td>
                                       <td>37</td>
                                       <td>2009/08/19</td>
                                       <td>$139,575</td>
                                    </tr>
                                    <tr>
                                       <td>Thor Walton</td>
                                       <td>Developer</td>
                                       <td>New York</td>
                                       <td>61</td>
                                       <td>2013/08/11</td>
                                       <td>$98,540</td>
                                    </tr>
                                    <tr>
                                       <td>Finn Camacho</td>
                                       <td>Support Engineer</td>
                                       <td>San Francisco</td>
                                       <td>47</td>
                                       <td>2009/07/07</td>
                                       <td>$87,500</td>
                                    </tr>
                                    <tr>
                                       <td>Serge Baldwin</td>
                                       <td>Data Coordinator</td>
                                       <td>Singapore</td>
                                       <td>64</td>
                                       <td>2012/04/09</td>
                                       <td>$138,575</td>
                                    </tr>
                                    <tr>
                                       <td>Zenaida Frank</td>
                                       <td>Software Engineer</td>
                                       <td>New York</td>
                                       <td>63</td>
                                       <td>2010/01/04</td>
                                       <td>$125,250</td>
                                    </tr>
                                    <tr>
                                       <td>Zorita Serrano</td>
                                       <td>Software Engineer</td>
                                       <td>San Francisco</td>
                                       <td>56</td>
                                       <td>2012/06/01</td>
                                       <td>$115,000</td>
                                    </tr>
                                    <tr>
                                       <td>Jennifer Acosta</td>
                                       <td>Junior Javascript Developer</td>
                                       <td>Edinburgh</td>
                                       <td>43</td>
                                       <td>2013/02/01</td>
                                       <td>$75,650</td>
                                    </tr>
                                    <tr>
                                       <td>Cara Stevens</td>
                                       <td>Sales Assistant</td>
                                       <td>New York</td>
                                       <td>46</td>
                                       <td>2011/12/06</td>
                                       <td>$145,600</td>
                                    </tr>
                                    <tr>
                                       <td>Hermione Butler</td>
                                       <td>Regional Director</td>
                                       <td>London</td>
                                       <td>47</td>
                                       <td>2011/03/21</td>
                                       <td>$356,250</td>
                                    </tr>
                                    <tr>
                                       <td>Lael Greer</td>
                                       <td>Systems Administrator</td>
                                       <td>London</td>
                                       <td>21</td>
                                       <td>2009/02/27</td>
                                       <td>$103,500</td>
                                    </tr>
                                    <tr>
                                       <td>Jonas Alexander</td>
                                       <td>Developer</td>
                                       <td>San Francisco</td>
                                       <td>30</td>
                                       <td>2010/07/14</td>
                                       <td>$86,500</td>
                                    </tr>
                                    <tr>
                                       <td>Shad Decker</td>
                                       <td>Regional Director</td>
                                       <td>Edinburgh</td>
                                       <td>51</td>
                                       <td>2008/11/13</td>
                                       <td>$183,000</td>
                                    </tr>
                                    <tr>
                                       <td>Michael Bruce</td>
                                       <td>Javascript Developer</td>
                                       <td>Singapore</td>
                                       <td>29</td>
                                       <td>2011/06/27</td>
                                       <td>$183,000</td>
                                    </tr>
                                    <tr>
                                       <td>Donna Snider</td>
                                       <td>Customer Support</td>
                                       <td>New York</td>
                                       <td>27</td>
                                       <td>2011/01/25</td>
                                       <td>$112,000</td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- End Advance Table Row -->
                   
                  <!-- Advance Table Row Start -->
                  <!-- <div class="row">
                     <div class="col-md-12">
                        <div class="page-box">
                           <div class="datatables-example-heading">
                              <h3>Button Example</h3>
                           </div>
                           <p>The Buttons extension for DataTables provides a common set of options, API methods and styling to display buttons on a page that will interact with a DataTable. The core library provides the based framework upon which plug-ins can built.</p>
                           <div class="table-responsive advance-table">
                              <table id="button_datatables_example" class="table display table-striped table-bordered">
                                 <thead>
                                    <tr>
                                       <th>Name</th>
                                       <th>Position</th>
                                       <th>Office</th>
                                       <th>Age</th>
                                       <th>Start date</th>
                                       <th>Salary</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>Tiger Nixon</td>
                                       <td>System Architect</td>
                                       <td>Edinburgh</td>
                                       <td>61</td>
                                       <td>2011/04/25</td>
                                       <td>$320,800</td>
                                    </tr>
                                    <tr>
                                       <td>Garrett Winters</td>
                                       <td>Accountant</td>
                                       <td>Tokyo</td>
                                       <td>63</td>
                                       <td>2011/07/25</td>
                                       <td>$170,750</td>
                                    </tr>
                                    <tr>
                                       <td>Ashton Cox</td>
                                       <td>Junior Technical Author</td>
                                       <td>San Francisco</td>
                                       <td>66</td>
                                       <td>2009/01/12</td>
                                       <td>$86,000</td>
                                    </tr>
                                    <tr>
                                       <td>Cedric Kelly</td>
                                       <td>Senior Javascript Developer</td>
                                       <td>Edinburgh</td>
                                       <td>22</td>
                                       <td>2012/03/29</td>
                                       <td>$433,060</td>
                                    </tr>
                                    <tr>
                                       <td>Airi Satou</td>
                                       <td>Accountant</td>
                                       <td>Tokyo</td>
                                       <td>33</td>
                                       <td>2008/11/28</td>
                                       <td>$162,700</td>
                                    </tr>
                                    <tr>
                                       <td>Brielle Williamson</td>
                                       <td>Integration Specialist</td>
                                       <td>New York</td>
                                       
                                       <td>61</td>
                                       <td>2012/12/02</td>
                                       <td>$372,000</td>
                                    </tr>
                                    <tr>
                                       <td>Herrod Chandler</td>
                                       <td>Sales Assistant</td>
                                       <td>San Francisco</td>
                                       <td>59</td>
                                       <td>2012/08/06</td>
                                       <td>$137,500</td>
                                    </tr>
                                    <tr>
                                       <td>Rhona Davidson</td>
                                       <td>Integration Specialist</td>
                                       <td>Tokyo</td>
                                       <td>55</td>
                                       <td>2010/10/14</td>
                                       <td>$327,900</td>
                                    </tr>
                                    <tr>
                                       <td>Colleen Hurst</td>
                                       <td>Javascript Developer</td>
                                       <td>San Francisco</td>
                                       <td>39</td>
                                       <td>2009/09/15</td>
                                       <td>$205,500</td>
                                    </tr>
                                    <tr>
                                       <td>Sonya Frost</td>
                                       <td>Software Engineer</td>
                                       <td>Edinburgh</td>
                                       <td>23</td>
                                       <td>2008/12/13</td>
                                       <td>$103,600</td>
                                    </tr>
                                    <tr>
                                       <td>Jena Gaines</td>
                                       <td>Office Manager</td>
                                       <td>London</td>
                                       <td>30</td>
                                       <td>2008/12/19</td>
                                       <td>$90,560</td>
                                    </tr>
                                    <tr>
                                       <td>Quinn Flynn</td>
                                       <td>Support Lead</td>
                                       <td>Edinburgh</td>
                                       <td>22</td>
                                       <td>2013/03/03</td>
                                       <td>$342,000</td>
                                    </tr>
                                    <tr>
                                       <td>Charde Marshall</td>
                                       <td>Regional Director</td>
                                       <td>San Francisco</td>
                                       <td>36</td>
                                       <td>2008/10/16</td>
                                       <td>$470,600</td>
                                    </tr>
                                    <tr>
                                       <td>Haley Kennedy</td>
                                       <td>Senior Marketing Designer</td>
                                       <td>London</td>
                                       <td>43</td>
                                       <td>2012/12/18</td>
                                       <td>$313,500</td>
                                    </tr>
                                    <tr>
                                       <td>Tatyana Fitzpatrick</td>
                                       <td>Regional Director</td>
                                       <td>London</td>
                                       <td>19</td>
                                       <td>2010/03/17</td>
                                       <td>$385,750</td>
                                    </tr>
                                    <tr>
                                       <td>Michael Silva</td>
                                       <td>Marketing Designer</td>
                                       <td>London</td>
                                       <td>66</td>
                                       <td>2012/11/27</td>
                                       <td>$198,500</td>
                                    </tr>
                                    <tr>
                                       <td>Paul Byrd</td>
                                       <td>Chief Financial Officer (CFO)</td>
                                       <td>New York</td>
                                       <td>64</td>
                                       <td>2010/06/09</td>
                                       <td>$725,000</td>
                                    </tr>
                                    <tr>
                                       <td>Gloria Little</td>
                                       <td>Systems Administrator</td>
                                       <td>New York</td>
                                       <td>59</td>
                                       <td>2009/04/10</td>
                                       <td>$237,500</td>
                                    </tr>
                                    <tr>
                                       <td>Bradley Greer</td>
                                       <td>Software Engineer</td>
                                       <td>London</td>
                                       <td>41</td>
                                       <td>2012/10/13</td>
                                       <td>$132,000</td>
                                    </tr>
                                    <tr>
                                       <td>Dai Rios</td>
                                       <td>Personnel Lead</td>
                                       <td>Edinburgh</td>
                                       <td>35</td>
                                       <td>2012/09/26</td>
                                       <td>$217,500</td>
                                    </tr>
                                    <tr>
                                       <td>Jenette Caldwell</td>
                                       <td>Development Lead</td>
                                       <td>New York</td>
                                       <td>30</td>
                                       <td>2011/09/03</td>
                                       <td>$345,000</td>
                                    </tr>
                                    <tr>
                                       <td>Yuri Berry</td>
                                       <td>Chief Marketing Officer (CMO)</td>
                                       <td>New York</td>
                                       <td>40</td>
                                       <td>2009/06/25</td>
                                       <td>$675,000</td>
                                    </tr>
                                    <tr>
                                       <td>Caesar Vance</td>
                                       <td>Pre-Sales Support</td>
                                       <td>New York</td>
                                       <td>21</td>
                                       <td>2011/12/12</td>
                                       <td>$106,450</td>
                                    </tr>
                                    <tr>
                                       <td>Doris Wilder</td>
                                       <td>Sales Assistant</td>
                                       <td>Sidney</td>
                                       <td>23</td>
                                       <td>2010/09/20</td>
                                       <td>$85,600</td>
                                    </tr>
                                    <tr>
                                       <td>Angelica Ramos</td>
                                       <td>Chief Executive Officer (CEO)</td>
                                       <td>London</td>
                                       <td>47</td>
                                       <td>2009/10/09</td>
                                       <td>$1,200,000</td>
                                    </tr>
                                    <tr>
                                       <td>Gavin Joyce</td>
                                       <td>Developer</td>
                                       <td>Edinburgh</td>
                                       <td>42</td>
                                       <td>2010/12/22</td>
                                       <td>$92,575</td>
                                    </tr>
                                    <tr>
                                       <td>Jennifer Chang</td>
                                       <td>Regional Director</td>
                                       <td>Singapore</td>
                                       <td>28</td>
                                       <td>2010/11/14</td>
                                       <td>$357,650</td>
                                    </tr>
                                    <tr>
                                       <td>Brenden Wagner</td>
                                       <td>Software Engineer</td>
                                       <td>San Francisco</td>
                                       <td>28</td>
                                       <td>2011/06/07</td>
                                       <td>$206,850</td>
                                    </tr>
                                    <tr>
                                       <td>Fiona Green</td>
                                       <td>Chief Operating Officer (COO)</td>
                                       <td>San Francisco</td>
                                       <td>48</td>
                                       <td>2010/03/11</td>
                                       <td>$850,000</td>
                                    </tr>
                                    <tr>
                                       <td>Shou Itou</td>
                                       <td>Regional Marketing</td>
                                       <td>Tokyo</td>
                                       <td>20</td>
                                       <td>2011/08/14</td>
                                       <td>$163,000</td>
                                    </tr>
                                    <tr>
                                       <td>Michelle House</td>
                                       <td>Integration Specialist</td>
                                       <td>Sidney</td>
                                       <td>37</td>
                                       <td>2011/06/02</td>
                                       <td>$95,400</td>
                                    </tr>
                                    <tr>
                                       <td>Suki Burks</td>
                                       <td>Developer</td>
                                       <td>London</td>
                                       <td>53</td>
                                       <td>2009/10/22</td>
                                       <td>$114,500</td>
                                    </tr>
                                    <tr>
                                       <td>Prescott Bartlett</td>
                                       <td>Technical Author</td>
                                       <td>London</td>
                                       <td>27</td>
                                       <td>2011/05/07</td>
                                       <td>$145,000</td>
                                    </tr>
                                    <tr>
                                       <td>Gavin Cortez</td>
                                       <td>Team Leader</td>
                                       <td>San Francisco</td>
                                       <td>22</td>
                                       <td>2008/10/26</td>
                                       <td>$235,500</td>
                                    </tr>
                                    <tr>
                                       <td>Martena Mccray</td>
                                       <td>Post-Sales support</td>
                                       <td>Edinburgh</td>
                                       <td>46</td>
                                       <td>2011/03/09</td>
                                       <td>$324,050</td>
                                    </tr>
                                    <tr>
                                       <td>Unity Butler</td>
                                       <td>Marketing Designer</td>
                                       <td>San Francisco</td>
                                       <td>47</td>
                                       <td>2009/12/09</td>
                                       <td>$85,675</td>
                                    </tr>
                                    <tr>
                                       <td>Howard Hatfield</td>
                                       <td>Office Manager</td>
                                       <td>San Francisco</td>
                                       <td>51</td>
                                       <td>2008/12/16</td>
                                       <td>$164,500</td>
                                    </tr>
                                    <tr>
                                       <td>Hope Fuentes</td>
                                       <td>Secretary</td>
                                       <td>San Francisco</td>
                                       <td>41</td>
                                       <td>2010/02/12</td>
                                       <td>$109,850</td>
                                    </tr>
                                    <tr>
                                       <td>Vivian Harrell</td>
                                       <td>Financial Controller</td>
                                       <td>San Francisco</td>
                                       <td>62</td>
                                       <td>2009/02/14</td>
                                       <td>$452,500</td>
                                    </tr>
                                    <tr>
                                       <td>Timothy Mooney</td>
                                       <td>Office Manager</td>
                                       <td>London</td>
                                       <td>37</td>
                                       <td>2008/12/11</td>
                                       <td>$136,200</td>
                                    </tr>
                                    <tr>
                                       <td>Jackson Bradshaw</td>
                                       <td>Director</td>
                                       <td>New York</td>
                                       <td>65</td>
                                       <td>2008/09/26</td>
                                       <td>$645,750</td>
                                    </tr>
                                    <tr>
                                       <td>Olivia Liang</td>
                                       <td>Support Engineer</td>
                                       <td>Singapore</td>
                                       <td>64</td>
                                       <td>2011/02/03</td>
                                       <td>$234,500</td>
                                    </tr>
                                    <tr>
                                       <td>Bruno Nash</td>
                                       <td>Software Engineer</td>
                                       <td>London</td>
                                       <td>38</td>
                                       <td>2011/05/03</td>
                                       <td>$163,500</td>
                                    </tr>
                                    <tr>
                                       <td>Sakura Yamamoto</td>
                                       <td>Support Engineer</td>
                                       <td>Tokyo</td>
                                       <td>37</td>
                                       <td>2009/08/19</td>
                                       <td>$139,575</td>
                                    </tr>
                                    <tr>
                                       <td>Thor Walton</td>
                                       <td>Developer</td>
                                       <td>New York</td>
                                       <td>61</td>
                                       <td>2013/08/11</td>
                                       <td>$98,540</td>
                                    </tr>
                                    <tr>
                                       <td>Finn Camacho</td>
                                       <td>Support Engineer</td>
                                       <td>San Francisco</td>
                                       <td>47</td>
                                       <td>2009/07/07</td>
                                       <td>$87,500</td>
                                    </tr>
                                    <tr>
                                       <td>Serge Baldwin</td>
                                       <td>Data Coordinator</td>
                                       <td>Singapore</td>
                                       <td>64</td>
                                       <td>2012/04/09</td>
                                       <td>$138,575</td>
                                    </tr>
                                    <tr>
                                       <td>Zenaida Frank</td>
                                       <td>Software Engineer</td>
                                       <td>New York</td>
                                       <td>63</td>
                                       <td>2010/01/04</td>
                                       <td>$125,250</td>
                                    </tr>
                                    <tr>
                                       <td>Zorita Serrano</td>
                                       <td>Software Engineer</td>
                                       <td>San Francisco</td>
                                       <td>56</td>
                                       <td>2012/06/01</td>
                                       <td>$115,000</td>
                                    </tr>
                                    <tr>
                                       <td>Jennifer Acosta</td>
                                       <td>Junior Javascript Developer</td>
                                       <td>Edinburgh</td>
                                       <td>43</td>
                                       <td>2013/02/01</td>
                                       <td>$75,650</td>
                                    </tr>
                                    <tr>
                                       <td>Cara Stevens</td>
                                       <td>Sales Assistant</td>
                                       <td>New York</td>
                                       <td>46</td>
                                       <td>2011/12/06</td>
                                       <td>$145,600</td>
                                    </tr>
                                    <tr>
                                       <td>Hermione Butler</td>
                                       <td>Regional Director</td>
                                       <td>London</td>
                                       <td>47</td>
                                       <td>2011/03/21</td>
                                       <td>$356,250</td>
                                    </tr>
                                    <tr>
                                       <td>Lael Greer</td>
                                       <td>Systems Administrator</td>
                                       <td>London</td>
                                       <td>21</td>
                                       <td>2009/02/27</td>
                                       <td>$103,500</td>
                                    </tr>
                                    <tr>
                                       <td>Jonas Alexander</td>
                                       <td>Developer</td>
                                       <td>San Francisco</td>
                                       <td>30</td>
                                       <td>2010/07/14</td>
                                       <td>$86,500</td>
                                    </tr>
                                    <tr>
                                       <td>Shad Decker</td>
                                       <td>Regional Director</td>
                                       <td>Edinburgh</td>
                                       <td>51</td>
                                       <td>2008/11/13</td>
                                       <td>$183,000</td>
                                    </tr>
                                    <tr>
                                       <td>Michael Bruce</td>
                                       <td>Javascript Developer</td>
                                       <td>Singapore</td>
                                       <td>29</td>
                                       <td>2011/06/27</td>
                                       <td>$183,000</td>
                                    </tr>
                                    <tr>
                                       <td>Donna Snider</td>
                                       <td>Customer Support</td>
                                       <td>New York</td>
                                       <td>27</td>
                                       <td>2011/01/25</td>
                                       <td>$112,000</td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
                   --><!-- End Advance Table Row -->
                   
                  <!-- Advance Table Row Start -->
                  <div class="row">
                     <div class="col-md-12">
                        <div class="page-box">
                           <div class="datatables-example-heading">
                              <h3>Responsive datatable Example</h3>
                           </div>
                           <p>Responsive is an extension for DataTables that resolves that problem by optimising the table's layout for different screen sizes through the dynamic insertion and removal of columns from the table.</p>
                           <div class="advance-table">
                              <table id="responsive_datatables_example" class="table display table-striped table-bordered responsive nowrap">
                                 <thead>
                                    <tr>
                                       <th>Name</th>
                                       <th>Position</th>
                                       <th>Age</th>
                                       <th>Start date</th>
                                       <th>Salary</th>
                                       <th>Email</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>Tiger Nixon</td>
                                       <td>System Architect</td>
                                       <td>61</td>
                                       <td>2011/04/25</td>
                                       <td>$320,800</td>
                                       <td>a.noxon@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Garrett Winters</td>
                                       <td>Accountant</td>
                                       <td>63</td>
                                       <td>2011/07/25</td>
                                       <td>$170,750</td>
                                       <td>a.winters@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Ashton Cox</td>
                                       <td>Junior Technical Author</td>
                                       <td>66</td>
                                       <td>2009/01/12</td>
                                       <td>$86,000</td>
                                       <td>d.cox@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Cedric Kelly</td>
                                       <td>Senior Javascript Developer</td>
                                       <td>22</td>
                                       <td>2012/03/29</td>
                                       <td>$433,060</td>
                                       <td>c.kelly@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Airi Satou</td>
                                       <td>Accountant</td>
                                       <td>33</td>
                                       <td>2008/11/28</td>
                                       <td>$162,700</td>
                                       <td>c.satou@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Brielle Williamson</td>
                                       <td>Integration Specialist</td>
                                       <td>61</td>
                                       <td>2012/12/02</td>
                                       <td>$372,000</td>
                                       <td>d.williamson@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Herrod Chandler</td>
                                       <td>Sales Assistant</td>
                                       <td>59</td>
                                       <td>2012/08/06</td>
                                       <td>$137,500</td>
                                       <td>e.chandler@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Rhona Davidson</td>
                                       <td>Integration Specialist</td>
                                       <td>55</td>
                                       <td>2010/10/14</td>
                                       <td>$327,900</td>
                                       <td>a.davidson@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Colleen Hurst</td>
                                       <td>Javascript Developer</td>
                                       <td>39</td>
                                       <td>2009/09/15</td>
                                       <td>$205,500</td>
                                       <td>b.hurst@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Sonya Frost</td>
                                       <td>Software Engineer</td>
                                       <td>23</td>
                                       <td>2008/12/13</td>
                                       <td>$103,600</td>
                                       <td>b.frost@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Jena Gaines</td>
                                       <td>Office Manager</td>
                                       <td>30</td>
                                       <td>2008/12/19</td>
                                       <td>$90,560</td>
                                       <td>a.gaines@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Quinn Flynn</td>
                                       <td>Support Lead</td>
                                       <td>22</td>
                                       <td>2013/03/03</td>
                                       <td>$342,000</td>
                                       <td>c.flynn@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Charde Marshall</td>
                                       <td>Regional Director</td>
                                       <td>36</td>
                                       <td>2008/10/16</td>
                                       <td>$470,600</td>
                                       <td>d.marshall@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Haley Kennedy</td>
                                       <td>Senior Marketing Designer</td>
                                       <td>43</td>
                                       <td>2012/12/18</td>
                                       <td>$313,500</td>
                                       <td>e.kennedy@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Tatyana Fitzpatrick</td>
                                       <td>Regional Director</td>
                                       <td>19</td>
                                       <td>2010/03/17</td>
                                       <td>$385,750</td>
                                       <td>a.fitzpat@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Michael Silva</td>
                                       <td>Marketing Designer</td>
                                       <td>66</td>
                                       <td>2012/11/27</td>
                                       <td>$198,500</td>
                                       <td>v.silva@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Paul Byrd</td>
                                       <td>Chief Financial Officer (CFO)</td>
                                       <td>64</td>
                                       <td>2010/06/09</td>
                                       <td>$725,000</td>
                                       <td>a.byrd@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Gloria Little</td>
                                       <td>Systems Administrator</td>
                                       <td>59</td>
                                       <td>2009/04/10</td>
                                       <td>$237,500</td>
                                       <td>c.little@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Bradley Greer</td>
                                       <td>Software Engineer</td>
                                       <td>41</td>
                                       <td>2012/10/13</td>
                                       <td>$132,000</td>
                                       <td>d.greer@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Dai Rios</td>
                                       <td>Personnel Lead</td>
                                       <td>35</td>
                                       <td>2012/09/26</td>
                                       <td>$217,500</td>
                                       <td>r.rios@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Jenette Caldwell</td>
                                       <td>Development Lead</td>
                                       <td>30</td>
                                       <td>2011/09/03</td>
                                       <td>$345,000</td>
                                       <td>a.caldwel@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Yuri Berry</td>
                                       <td>Chief Marketing Officer (CMO)</td>
                                       <td>40</td>
                                       <td>2009/06/25</td>
                                       <td>$675,000</td>
                                       <td>a.berry@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Caesar Vance</td>
                                       <td>Pre-Sales Support</td>
                                       <td>21</td>
                                       <td>2011/12/12</td>
                                       <td>$106,450</td>
                                       <td>c.vance@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Doris Wilder</td>
                                       <td>Sales Assistant</td>
                                       <td>23</td>
                                       <td>2010/09/20</td>
                                       <td>$85,600</td>
                                       <td>c.wilder@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Angelica Ramos</td>
                                       <td>Chief Executive Officer (CEO)</td>
                                       <td>47</td>
                                       <td>2009/10/09</td>
                                       <td>$1,200,000</td>
                                       <td>a.ramos@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Gavin Joyce</td>
                                       <td>Developer</td>
                                       <td>42</td>
                                       <td>2010/12/22</td>
                                       <td>$92,575</td>
                                       <td>j.joyce@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Jennifer Chang</td>
                                       <td>Regional Director</td>
                                       <td>28</td>
                                       <td>2010/11/14</td>
                                       <td>$357,650</td>
                                       <td>j.chang@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Brenden Wagner</td>
                                       <td>Software Engineer</td>
                                       <td>28</td>
                                       <td>2011/06/07</td>
                                       <td>$206,850</td>
                                       <td>c.wagner@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Fiona Green</td>
                                       <td>Chief Operating Officer (COO)</td>
                                       <td>48</td>
                                       <td>2010/03/11</td>
                                       <td>$850,000</td>
                                       <td>b.green@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Shou Itou</td>
                                       <td>Regional Marketing</td>
                                       <td>20</td>
                                       <td>2011/08/14</td>
                                       <td>$163,000</td>
                                       <td>f.itou@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Michelle House</td>
                                       <td>Integration Specialist</td>
                                       <td>37</td>
                                       <td>2011/06/02</td>
                                       <td>$95,400</td>
                                       <td>l.house@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Suki Burks</td>
                                       <td>Developer</td>
                                       <td>53</td>
                                       <td>2009/10/22</td>
                                       <td>$114,500</td>
                                       <td>a.burks@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Prescott Bartlett</td>
                                       <td>Technical Author</td>
                                       <td>27</td>
                                       <td>2011/05/07</td>
                                       <td>$145,000</td>
                                       <td>a.tlett@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Gavin Cortez</td>
                                       <td>Team Leader</td>
                                       <td>22</td>
                                       <td>2008/10/26</td>
                                       <td>$235,500</td>
                                       <td>a.cortez@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Martena Mccray</td>
                                       <td>Post-Sales support</td>
                                       <td>46</td>
                                       <td>2011/03/09</td>
                                       <td>$324,050</td>
                                       <td>c.mccray@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Unity Butler</td>
                                       <td>Marketing Designer</td>
                                       <td>47</td>
                                       <td>2009/12/09</td>
                                       <td>$85,675</td>
                                       <td>c.butler@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Howard Hatfield</td>
                                       <td>Office Manager</td>
                                       <td>51</td>
                                       <td>2008/12/16</td>
                                       <td>$164,500</td>
                                       <td>a.field@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Hope Fuentes</td>
                                       <td>Secretary</td>
                                       <td>41</td>
                                       <td>2010/02/12</td>
                                       <td>$109,850</td>
                                       <td>b.uentes@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Vivian Harrell</td>
                                       <td>Financial Controller</td>
                                       <td>62</td>
                                       <td>2009/02/14</td>
                                       <td>$452,500</td>
                                       <td>d.harrell@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Timothy Mooney</td>
                                       <td>Office Manager</td>
                                       <td>37</td>
                                       <td>2008/12/11</td>
                                       <td>$136,200</td>
                                       <td>f.mooney@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Jackson Bradshaw</td>
                                       <td>Director</td>
                                       <td>65</td>
                                       <td>2008/09/26</td>
                                       <td>$645,750</td>
                                       <td>a.shaw@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Olivia Liang</td>
                                       <td>Support Engineer</td>
                                       <td>64</td>
                                       <td>2011/02/03</td>
                                       <td>$234,500</td>
                                       <td>c.liang@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Bruno Nash</td>
                                       <td>Software Engineer</td>
                                       <td>38</td>
                                       <td>2011/05/03</td>
                                       <td>$163,500</td>
                                       <td>a.nash@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Sakura Yamamoto</td>
                                       <td>Support Engineer</td>
                                       <td>37</td>
                                       <td>2009/08/19</td>
                                       <td>$139,575</td>
                                       <td>m.moto@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Thor Walton</td>
                                       <td>Developer</td>
                                       <td>61</td>
                                       <td>2013/08/11</td>
                                       <td>$98,540</td>
                                       <td>a.wlton@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Finn Camacho</td>
                                       <td>Support Engineer</td>
                                       <td>47</td>
                                       <td>2009/07/07</td>
                                       <td>$87,500</td>
                                       <td>c.wlton@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Serge Baldwin</td>
                                       <td>Data Coordinator</td>
                                       <td>64</td>
                                       <td>2012/04/09</td>
                                       <td>$138,575</td>
                                       <td>a.baldwin@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Zenaida Frank</td>
                                       <td>Software Engineer</td>
                                       <td>63</td>
                                       <td>2010/01/04</td>
                                       <td>$125,250</td>
                                       <td>c.frank@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Zorita Serrano</td>
                                       <td>Software Engineer</td>
                                       <td>56</td>
                                       <td>2012/06/01</td>
                                       <td>$115,000</td>
                                       <td>a.serrano@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Jennifer Acosta</td>
                                       <td>Junior Javascript Developer</td>
                                       <td>43</td>
                                       <td>2013/02/01</td>
                                       <td>$75,650</td>
                                       <td>b.acosta@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Cara Stevens</td>
                                       <td>Sales Assistant</td>
                                       <td>46</td>
                                       <td>2011/12/06</td>
                                       <td>$145,600</td>
                                       <td>c.evens@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Hermione Butler</td>
                                       <td>Regional Director</td>
                                       <td>47</td>
                                       <td>2011/03/21</td>
                                       <td>$356,250</td>
                                       <td>c.butler@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Lael Greer</td>
                                       <td>Systems Administrator</td>
                                       <td>21</td>
                                       <td>2009/02/27</td>
                                       <td>$103,500</td>
                                       <td>h.greer@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Jonas Alexander</td>
                                       <td>Developer</td>
                                       <td>30</td>
                                       <td>2010/07/14</td>
                                       <td>$86,500</td>
                                       <td>c.ander@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Shad Decker</td>
                                       <td>Regional Director</td>
                                       <td>51</td>
                                       <td>2008/11/13</td>
                                       <td>$183,000</td>
                                       <td>a.decker@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Michael Bruce</td>
                                       <td>Javascript Developer</td>
                                       <td>29</td>
                                       <td>2011/06/27</td>
                                       <td>$183,000</td>
                                       <td>r.bruce@datatables.net</td>
                                    </tr>
                                    <tr>
                                       <td>Donna Snider</td>
                                       <td>Customer Support</td>
                                       <td>27</td>
                                       <td>2011/01/25</td>
                                       <td>$112,000</td>
                                       <td>a.snider@datatables.net</td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- End Advance Table Row -->
                   
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
      <!-- Datatables -->
      <script src="<%=request.getContextPath()%>/adminResources/js/jquery.dataTables.min.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap.min.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.buttons.min.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/buttons.bootstrap.min.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/buttons.flash.min.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/buttons.html5.min.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/buttons.print.min.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.responsive.min.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/responsive.bootstrap.min.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/jszip.min.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/pdfmake.min.js"></script>
      <script src="<%=request.getContextPath()%>/adminResources/js/vfs_fonts.js"></script>
      <!-- Perfect Scrollbar JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/jquery-perfect-scrollbar.min.js"></script>
      <!-- Form Wizard Custom JS For Only This Page -->
      <script src="<%=request.getContextPath()%>/adminResources/js/advance_table_custom.js"></script>
      <!-- Custom JS -->
      <script src="<%=request.getContextPath()%>/adminResources/js/seipkon.js"></script>
   </body>
</html>