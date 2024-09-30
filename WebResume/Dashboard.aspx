<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebResume.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <style>

    .container-fluid{
        width:auto;
        height:auto;
        margin-top:42px;
           
    }
    .navbar{
        /*text-align :justify*/
        display:flex;
        box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.3);
    }
    .navbar-collapse{
        flex-flow:nowrap;
        min-width:992px;
    }
    .fa-sign-out{
        padding-left: 10px;
        font-size: 24px;
    }
    .glyphicon-user {
        padding-right: 10px;
    }
    .fa-map-marker {
        color: red;
        font-size: 24px;
        padding-right: 10px; 
    }
    .fa-envelope {
        color: DodgerBlue;
        font-size: 24px;
        padding-right: 10px; 
    }
    .fa-phone{
        color: Green;
        font-size: 24px;
        padding-right: 10px; 
    }
    .item1{
        background-color: LightGray;
        min-height:900px;
        min-width:265px;
        padding:0px;
        box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.3);
    }
    .item2 {
        width:auto;
        min-width: 1325px;
        margin-top: 10px

    }
    .row-container{
        width:auto;
        min-width: 1610px;
    }
    .header-skill ,.header-contact{
        background-color: Gray;
        padding:10px;
        color: white;
        box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.3);
    }
    .body-skill ,.body-contact{
        font-size:18px;
    }
    .skill ,.contact{
        padding:10px;
        flex-flow:wrap;
        text-overflow: ellipsis;
    }
    hr{
        background-color: black;
        height:2px;
    }
    .navbar-user{
        text-align: end;
        color: snow;
        font-size: 18px;
        padding-right: 10px;

    }
    #picture {
        /*text-align: end;*/
        /*box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.3);*/
    }
    .col-picture{
        min-width: 200px;
        max-width: 200px;
        min-height: 250px;
        max-height: 250px;
/*        padding-left: 0px;*/
    }
    .top-profile{
        margin-top: 10px;
        /*background-color: LightGray;*/
    }
    #fullname{
        font-size: 80px;
        padding-left: 15px;

    }
    
    #career{
        font-size: 30px;
        padding-left: 15px
    }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-fixed-top navbar-expand-lg navbar-dark bg-dark">  
            <div class="col-3 brand"> 
                <a class="navbar-brand" href="#">My Resume</a>
            </div>
<%--            <div class="col-7 navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
            </div>--%>
            <div class="col-9 navbar-user"> 
                <i class="glyphicon glyphicon-user"></i>
                <span class="username" id="username"></span> 
                 <a class="sign-out" href="https://localhost:44314/Login"><i class="fa fa-sign-out" title="Log out"></i></a>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row row-container">
                <div class="item1 col-2">
                    <h3 class="header-contact">CONTACT</h3>
                    <div class="row body-contact">
                        <div class="col-12">
                            <div class="contact">
                                <i class="fa fa-map-marker"><label style="color:black;padding-left:10px;">Address</label></i>
                                <div id="address"></div>
                            </div>
                            <div class="contact">
                                <i class="fa fa-phone"><label style="color:black;padding-left:10px;">Phone</label></i>
                                <div id="phonenumber"></div>
                            </div>
                            <div class="contact">
                                <i class="fa fa-envelope"><label style="color:black;padding-left:10px;">Email</label></i>
                                <div id="email"></div>
                            </div>
                        </div>
                    </div>
                    <h3 class="header-skill">LANGUAGE SKILLS</h3>
                    <div class="row body-skill">
                        <div class="col-6">
                            <div class="body-skill">
                                <div class="skill">- HTML</div>
                                <div class="skill">- CSS</div>
                                <div class="skill">- JavaScript</div>
                                <div class="skill">- SQL Server Integration Services(SSIS)</div>
                                <div class="skill">- SQL Server Reporting Services(SSRS)</div>
                                <div class="skill">- Angular</div>
                                <div class="skill">- React</div>
                                <div class="skill">- Bootstrap</div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="body-skill">
                                <div class="skill">- C++</div>
                                <div class="skill">- C#</div>
                                <div class="skill">- Power Automate</div>
                                <div class="skill">- TypeScript</div>
                                <div class="skill">- SQL Server</div>
                                <div class="skill">- jQuery</div>
                                <div class="skill">- Java</div>
                                <div class="skill">- PHP</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item2 col-10">
                    <div class="row top-profile">
                        <div class="col-3 col-picture">
                            <div id="picture"></div>
                        </div>
                        <div class="col-9 col-name-career">
                            <div id="fullname"></div>
                            <div id="career"></div>
                        </div>
                    </div><hr/>
                    <h3>EDUCATION</h3><hr />
                    <div class="row body-education">
                        <div class="col-3">
                            <div class="date-education">Aug 2016 -  Apr 2020</div>
                            <div class="education">Burapha University, Chonburi</div>
                        </div>
                         <div class="col-9">
                             <div class="header-detail">Bachelor of Science</div>
                             <div class="body-detail">Software Engineering  GPA 3.11/4.0
                             </div>
                         </div>
                    </div>

                    <h3>EXPERIENCE</h3><hr />
                    <div class="row body-experience">
                        <div class="col-3">
                            <div class="date-experience1"> Jun 2020 - Dec 2021</div>
                            <div class="company-experience1">Protoss Technology ,Bangkok</div>
                        </div>
                         <div class="col-9">
                            <div class="header-detail1">Software Developer</div>
                            <ul>
                                <li>Develop the system for Krungthai AXA.</li>
                                <li>Develop a system for time attendance for termite control companies.</li>
                                <li>Develop system for GPX company.</li>
                            </ul>
                         </div>
                        <div class="col-3">
                            <div class="date-experience2">Nov 2023 - Present</div>
                            <div class="company-experience2">Align Solution Co., Ltd.</div>
                        </div>
                        <div class="col-9">
                            <div class="header-detail2">Software Developer</div>
                            <ul>
                                <li>Fix problems in the system of Thanachart Insurance.</li>
                                <li>Preparing the database for integration and migration.</li>
                                <li>Preparing the database for integration and data migration for Falcon Insurance.</li>
                                <li>Develop system for TTB.</li>
                                <li>Fix problems in the system of NT</li>
                                <li>Providing web services for Metro Cat Company.</li>
                            </ul>
                         </div>
                    </div>

                    <h3>PROFILE</h3><hr />
                    <div class="row body-profile">
                        <div class="col-12" style=" inline-size: 30px;overflow-wrap: break-word;">
                            <div class="detail-profile">A position as a Software Developer responsible for the development of various systems to requirements of users With experience in developing systems in front-end and back end.</div>
                        </div>
                    </div>

                    <h3>INTERNSHIPS</h3><hr />
                    <div class="row body-internship">
                        <div class="col-3">
                            <div class="date-internship">June 2023 - Oct 2023</div>
                            <div class="company-experience">Align Solution Co., Ltd.</div>
                        </div>
                         <div class="col-9">
                             <div class="detail-internship">Learn about SSIS, SSRS, Power Automate, SQL Server, web services, and customer relationship marketing (CRM).</div>
                         </div>
                    </div>
                </div>
            </div>          
        </div>
    </form>
    <script src="Scripts/app.js" type="module"></script>
</body>
</html>
