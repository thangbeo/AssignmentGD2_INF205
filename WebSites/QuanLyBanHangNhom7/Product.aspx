<%@ Page Language="VB" AutoEventWireup="True" CodeFile="Product.aspx.vb" Inherits="Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                        <a id="A6" runat="server" href="/Default"><img src="images/logo.png"  class="logo" alt="logobook" ></a>
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
                        <li><a runat="server" href="~/Lienhe">Contact</a></li>
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
                                <li  class="active"><a id="A1" runat="server" href="~/Product" >Product</a></li>
                                <li><a id="A4" runat="server" href="~/Category">Category</a></li>
							    <li><a id="A5" runat="server" href="~/Purchase">Purchase</a></li>
							    <li><a id="A2" runat="server" href="~/Purchaseitem">Purchase Item</a></li>
							    <li><a id="A3" runat="server" href="~/Client">Client</a></li>
                            </ul>

                        </div>
                        <div class="tab-content">
                            <h3 style="text-align:center; font-weight:bold;">Product Managerment</h3>
                            <asp:ListView ID="ListView1" runat="server" DataKeyNames="product_id" DataSourceID="ProductList" InsertItemPosition="LastItem">
                                <AlternatingItemTemplate>
                                    <tr style="">
                                        <td style="">
                                            
                                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-primary" />
                                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
                                        </td>
                                        <td>
                                            <asp:Label ID="product_idLabel" CssClass="text-danger" runat="server" Text='<%# Eval("product_id") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="productcategory_idLabel" runat="server" Text='<%# Eval("productcategory_id") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="namesLabel" runat="server" Text='<%# Eval("names") %>' />
                                        </td>
                                        <td>
                                            <asp:Image ID="imgLabel" runat="server" ImageUrl='<%# Eval("img") %>' Width="100px" Height="100px" />
                                        </td>
                                        <td>
                                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="skuLabel" runat="server" Text='<%# Eval("sku") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="discriptionLabel" runat="server" Text='<%# Eval("discription") %>' />
                                        </td>

                                    </tr>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <tr style="" class="table table-responsive">
                                        <td>
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" CssClass="btn btn-success" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-warning" />
                                        </td>
                                        <td>
                                            <asp:Label CssClass="form-control" ID="product_idLabel1" runat="server" Text='<%# Eval("product_id") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" ID="productcategory_idTextBox" runat="server" Text='<%# Bind("productcategory_id") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" ID="namesTextBox" runat="server" Text='<%# Bind("names") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" ID="skuTextBox" runat="server" Text='<%# Bind("sku") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" ID="discriptionTextBox" runat="server" Text='<%# Bind("discription") %>' />
                                        </td>
                                    </tr>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <table id="Table1" runat="server" style="">
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
                                            <asp:TextBox CssClass="form-control" ID="product_idTextBox" runat="server" Text='<%# Bind("product_id") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" ID="productcategory_idTextBox" runat="server" Text='<%# Bind("productcategory_id") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" ID="namesTextBox" runat="server" Text='<%# Bind("names") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control"  ID="skuTextBox" runat="server" Text='<%# Bind("sku") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" ID="discriptionTextBox" runat="server" Text='<%# Bind("discription") %>' />
                                        </td>
                                    </tr>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <tr style="">
                                        <td style="">
                                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-primary" />
                                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
                                        </td>
                                        <td>
                                            <asp:Label ID="product_idLabel" CssClass="text-danger" runat="server" Text='<%# Eval("product_id") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="productcategory_idLabel" runat="server" Text='<%# Eval("productcategory_id") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="namesLabel" runat="server" Text='<%# Eval("names") %>' />
                                        </td>
                                        <td>
                                            <asp:Image ID="imgLabel" runat="server" ImageUrl='<%# Eval("img") %>' Width="100px" Height="100px" />
                                        </td>
                                        <td>
                                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="skuLabel" runat="server" Text='<%# Eval("sku") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="discriptionLabel" runat="server" Text='<%# Eval("discription") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate> 
                                <LayoutTemplate>
                                    <table id="Table2" runat="server" style="width: 1000px;" class="table table-responsive">
                                        <tr id="Tr1" runat="server">
                                            <td id="Td1" runat="server">
                                                <table id="itemPlaceholderContainer" runat="server" class="table table-responsive" border="1">
                                                    <tr id="Tr2" runat="server" style="">
                                                        <th id="Th1" class="buttomrow" runat="server"></th>
                                                        <th id="Th2" runat="server">product_id</th>
                                                        <th id="Th3" runat="server">category_id</th>
                                                        <th id="Th4" runat="server">names</th>
                                                        <th id="Th5" runat="server">img</th>
                                                        <th id="Th6" runat="server">price</th>
                                                        <th id="Th7" runat="server">sku</th>
                                                        <th id="Th8" runat="server">discription</th>
                                                    </tr>
                                                    <tr id="itemPlaceholder" runat="server">
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr id="Tr3" runat="server">
                                            <td id="Td2" runat="server" style="float:right; margin-right:30px;" >
                                                <asp:DataPager ID="DataPager1" runat="server"  PageSize="6">
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
                                    <tr class="table table-responsive" style="width:1000px;">
                                        <td>
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" CssClass="btn btn-success" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-warning" />
                                        </td>
                                        <td style="width:60px;">
                                            <asp:Label ID="product_idLabel" runat="server" Text='<%# Eval("product_id") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="productcategory_idLabel" runat="server" Text='<%# Eval("productcategory_id") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="namesLabel" runat="server" Text='<%# Eval("names") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="skuLabel" runat="server" Text='<%# Eval("sku") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="discriptionLabel" runat="server" Text='<%# Eval("discription") %>' />
                                        </td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource ID="ProductList" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [product_id] = @product_id" InsertCommand="INSERT INTO [product] ([product_id], [productcategory_id], [names], [img], [price], [sku], [discription]) VALUES (@product_id, @productcategory_id, @names, @img, @price, @sku, @discription)" SelectCommand="SELECT [product_id], [productcategory_id], [names], [img], [price], [sku], [discription] FROM [product]" UpdateCommand="UPDATE [product] SET [productcategory_id] = @productcategory_id, [names] = @names, [img] = @img, [price] = @price, [sku] = @sku, [discription] = @discription WHERE [product_id] = @product_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="product_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="product_id" Type="Int32" />
                                    <asp:Parameter Name="productcategory_id" Type="Int32" />
                                    <asp:Parameter Name="names" Type="String" />
                                    <asp:Parameter Name="img" Type="String" />
                                    <asp:Parameter Name="price" Type="Decimal" />
                                    <asp:Parameter Name="sku" Type="String" />
                                    <asp:Parameter Name="discription" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="productcategory_id" Type="Int32" />
                                    <asp:Parameter Name="names" Type="String" />
                                    <asp:Parameter Name="img" Type="String" />
                                    <asp:Parameter Name="price" Type="Decimal" />
                                    <asp:Parameter Name="sku" Type="String" />
                                    <asp:Parameter Name="discription" Type="String" />
                                    <asp:Parameter Name="product_id" Type="Int32" />
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
