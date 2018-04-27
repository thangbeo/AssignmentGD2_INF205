<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Client.aspx.vb" Inherits="Client" %>

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
                        <a runat="server" href="/Default"><img src="images/logo.png"  class="logo" alt="logobook" ></a>
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
                        <li><a id="A6" runat="server" href="~/Lienhe">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <div id="carousel-id" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-id" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-id" data-slide-to="1" class=""></li>
                            <li data-target="#carousel-id" data-slide-to="2" class=""></li>
                            <li data-target="#carousel-id" data-slide-to="3" class=""></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item">
                                <img src="images/slideshow_1.png">
                            </div>
                            <div class="item">
                                <img src="images/slideshow_2.png">
                            </div>
                            <div class="item active">
                                <img src="images/slideshow_3.png">
                            </div>
                            <div class="item ">
                                <img src="images/slideshow_4.png">
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-md-3">
                    <div class="banner-w">
                        <img src="images/bannerslider.png">
                    </div>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-2">
                        <div class="menudoc">
                            <h2>Categories</h2>
                            <div class="tdeall">
                                <h3>ALL</h3>
                            </div>
                            <p>Fiction & Literature</p>
                            <ul>
                                <li><a href="">Children</a></li>
                                <li><a href="">Science Fiction</a></li>
                                <li><a href="">Fantasy</a></li>
                                <li><a href="">Mystery</a></li>
                                <li><a href="">Romance</a></li>
                                <li><a href="">Horror</a></li>
                                <li><a href="">Poetry</a></li>
                                <li><a href="">Literature</a></li>
                                <li><a href="">Crime</a></li>
                            </ul>
                            <p>Non - Fiction</p>
                            <ul>
                                <li><a href="">Comic</a></li>
                                <li><a href="">Cook</a></li>
                                <li><a href="">Psychology</a></li>
                                <li><a href="">Medical</a></li>
                                <li><a href="">Art</a></li>
                                <li><a href="">Photography</a></li>
                                <li><a href="">Law</a></li>
                                <li><a href="">History</a></li>
                                <li><a href="">Business</a></li>
                                <li><a href="">Computer</a></li>
                            </ul>
                            <p>Other</p>
                            <ul>
                                <li><a href="">Baby</a></li>
                                <li><a href="">Sex</a></li>
                                <li><a href="">Travel</a></li>
                                <li><a href="">Science</a></li>
                                <li><a href="">Sports</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-10">
                        <div class="group-tabs">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="active"><a id="A3" runat="server" href="~/Client">Client</a></li>
                                <li><a id="A1" runat="server" href="~/Product" >Product</a></li>
                                <li><a id="A4" runat="server" href="~/Category">Category</a></li>
							    <li><a id="A5" runat="server" href="~/Purchase">Purchase</a></li>
							    <li><a id="A2" runat="server" href="~/Purchaseitem">Purchase Item</a></li>
							    
                            </ul>

                        </div>
                        <div class="tab-content">
                            <h3 style="text-align:center; font-weight:bold;">Client Managerment</h3>
                            <asp:ListView ID="ListView1" runat="server" DataKeyNames="client_id" DataSourceID="ProductList" InsertItemPosition="LastItem">
                                <AlternatingItemTemplate>
                                    <tr style="">
                                        <td>     
                                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-primary"/>
                                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger"/>
                                        </td>
                                        <td>
                                            <asp:Label ID="client_idLabel" runat="server" Text='<%# Eval("client_id") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="full_nameLabel" runat="server" Text='<%# Eval("full_name") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                        </td>

                                    </tr>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" CssClass="btn btn-success" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-warning" />
                                        </td>
                                        <td>
                                            <asp:Label ID="client_idLabel1" runat="server" Text='<%# Eval("client_id") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="full_nameTextBox" runat="server" Text='<%# Bind("full_name") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                        </td>
                                    </tr>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>No data was returned.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" CssClass="btn btn-success" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CssClass="btn btn-danger" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="client_idTextBox" runat="server" Text='<%# Bind("client_id") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="full_nameTextBox" runat="server" Text='<%# Bind("full_name") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                        </td>
                                    </tr>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-primary"/>
                                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger"/>
                                        </td>
                                        <td>
                                            <asp:Label ID="client_idLabel" runat="server" Text='<%# Eval("client_id") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="full_nameLabel" runat="server" Text='<%# Eval("full_name") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate> 
                                <LayoutTemplate>
                                    <table runat="server" class="table table-responsive">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table id="itemPlaceholderContainer" runat="server" border="1" style="width: 980px" class="table table-responsive">
                                                    <tr runat="server" style="">
                                                        <th class="buttomrow" runat="server"></th>
                                                        <th runat="server">client_id</th>
                                                        <th runat="server">full_name</th>
                                                        <th runat="server">email</th>
                                                    </tr>
                                                    <tr id="itemPlaceholder" runat="server">
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr runat="server">
                                            <td runat="server" style="float:right; margin-right:30px;" >
                                                <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                                    <Fields>
                                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                        <asp:NumericPagerField />
                                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                    </Fields>
                                                </asp:DataPager>
                                            </td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <tr style="">
                                        <td>
                                            
                                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete"  />
                                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                        </td>
                                        <td>
                                            <asp:Label ID="client_idLabel" runat="server" Text='<%# Eval("client_id") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="full_nameLabel" runat="server" Text='<%# Eval("full_name") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                        </td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource ID="ProductList" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [client] WHERE [client_id] = @client_id" InsertCommand="INSERT INTO [client] ([client_id], [full_name], [email]) VALUES (@client_id, @full_name, @email)" SelectCommand="SELECT [client_id], [full_name], [email] FROM [client]" UpdateCommand="UPDATE [client] SET [full_name] = @full_name, [email] = @email WHERE [client_id] = @client_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="client_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="client_id" Type="Int32" />
                                    <asp:Parameter Name="full_name" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="full_name" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="client_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
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
</body>
</html>
