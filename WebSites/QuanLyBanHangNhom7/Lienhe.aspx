<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Lienhe.aspx.vb" Inherits="Lienhe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="top-bar">
                        <div class="topbarlink-a">
                            <a href="">Help</a>
                            <a href="">Order stastus</a>
                            <a href="">My account</a>
                            <a href="">Sign in</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="header-bar">
                    <div class="col-md-2">
                        <a id="A2" runat="server" href="/Default"><img src="images/logo.png"  class="logo" alt="logobook" ></a>
                    </div>
                    <div class="col-md-6">
                        <div class="tk">

                            <div class="tk-input">
                                <input type="text" class="search-tk" placeholder="">
                            </div>
                            <button type="submit" class="btn-tk"><span class="glyphicon glyphicon-search"></span>Search</button>
                        </div>
                    </div>

                    <div class="col-md-4">
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="nav-menu">
                    <ul>
                        <li><a href="">Computers</a></li>
                        <li><a href="">Cooking</a></li>
                        <li><a href="">Education</a></li>
                        <li><a href="">Fiction</a></li>
                        <li><a href="">Health</a></li>
                        <li><a href="">Mathematics</a></li>
                        <li><a href="">Medical</a></li>
                        <li><a href="">Reference</a></li>
                        <li><a id="A1" runat="server" href="~/Lienhe">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="content">
            <div class="container">
                <div class="row">
                    <h2 style="font-weight:bold; margin-left:15px;">Contact</h2>
                    <div class="col-md-5" style="float:left;"> 
                        Họ Tên:
                        <br />
                        <input id="Text1" type="text" style="margin-bottom:10px;"/>
                        <br />
                        Email:
                        <br />
                        <input id="Text2" type="text" style="margin-bottom:10px;" />
                        <br />
                        Nội dung:
                        <br />
                        <textarea id="TextArea1" cols="20" rows="2" style="margin-bottom:10px; width:400px; height:200px;"></textarea>
                        <br />
                        <input id="Button1" class="btn btn-success" type="button" value="Gửi" />

                    </div>
                    <div class="col-md-7">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9686066316635!2d105.76409351397882!3d21.03394209297941!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b96b37fe41%3A0x5e8b29b0e4ee866e!2zS8O9IHTDumMgeMOhIE3hu7kgxJDDrG5o!5e0!3m2!1svi!2s!4v1523607670058" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                   
                    
                </div>
            </div>
        </div>

        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="td-ft">
                        <div class="col-md-3">
                            <h3>Biography & True Stories</h3>
                            <p><a href="">General</a></p>
                            <p><a href="">Diaries, Letters & Journals</a></p>
                            <p><a href="">Memoirs</a></p>
                            <p><a href="">True Stories</a></p>
                            <p><a href="">Generic Exams</a></p>
                        </div>
                    </div>
                    <div class="td-ft">
                        <div class="col-md-3">
                            <h3>Biography & True Stories</h3>
                            <p><a href="">General</a></p>
                            <p><a href="">Diaries, Letters & Journals</a></p>
                            <p><a href="">Memoirs</a></p>
                            <p><a href="">True Stories</a></p>
                            <p><a href="">Generic Exams</a></p>
                        </div>
                    </div>
                    <div class="td-ft">
                        <div class="col-md-3">
                            <h3>Biography & True Stories</h3>
                            <p><a href="">General</a></p>
                            <p><a href="">Diaries, Letters & Journals</a></p>
                            <p><a href="">Memoirs</a></p>
                            <p><a href="">True Stories</a></p>
                            <p><a href="">Generic Exams</a></p>
                        </div>
                    </div>
                    <div class="td-ft">
                        <div class="col-md-3">
                            <h3>Biography & True Stories</h3>
                            <p><a href="">General</a></p>
                            <p><a href="">Diaries, Letters & Journals</a></p>
                            <p><a href="">Memoirs</a></p>
                            <p><a href="">True Stories</a></p>
                            <p><a href="">Generic Exams</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="lh">
                        <p>We accept all major Credit Card/Debit Card/Internet Banking </p>
                        <div class="lh-anh">
                            <img src="images/mastercard.png" alt="">
                            <img src="images/american.png" alt="">
                            <img src="images/visa.png" alt="">
                        </div>
                        <div class="coopyright">
                            <p>Conditions of Use Privacyof Use Privacy Notice © 2012-2013, Booksonline, Inc. or its affiliates</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body></html>
