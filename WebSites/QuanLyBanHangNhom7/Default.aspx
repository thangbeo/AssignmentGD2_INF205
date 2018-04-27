<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
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
					<a href="/Default"><img src="images/logo.png"  class="logo" alt="logobook" ></a>
				</div>
				<div class="col-md-6">
                    <div class="tk">
					<form class="form-tk" role="search">
						<div class="tk-input">
							<input type="text" class="search-tk" placeholder="">
						</div>
						<button type="submit" class="btn-tk"><span class="glyphicon glyphicon-search"></span> Search</button>
					</form>
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
					<li><a runat="server" href="~/Product">Computers</a></li>
					<li><a href="">Cooking</a></li>
					<li><a href="">Education</a></li>
					<li><a href="">Fiction</a></li>
					<li><a href="">Health</a></li>
					<li><a href="">Mathematics</a></li>
					<li><a href="">Medical</a></li>
					<li><a href="">Reference</a></li>
					<li><a href="">Science</a></li>
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
							<li><a id="A1" runat="server" href="~/Product" >Product</a></li>
                            <li><a id="A4" runat="server" href="~/Category">Category</a></li>
							<li><a id="A5" runat="server" href="~/Purchase">Purchase</a></li>
							<li><a id="A2" runat="server" href="~/Purchaseitem">Purchase Item</a></li>
							<li><a id="A3" runat="server" href="~/Client">Client</a></li>
						</ul>
                         <asp:DataList CssClass="product" ID="DataList1" runat="server" DataKeyField="product_id" DataSourceID="QLBH" BorderColor="Gray" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" RepeatColumns="4">
                    <ItemTemplate>
                        <div class="thumbnail text-center">
                            <asp:Image ID="imgLabel" runat="server" ImageUrl='<%# Eval("img") %>' CssClass="img-thumbnail" Width="150px" Height="170px"/>
                        
                        <div class="infoName">
                            <asp:Label ID="namesLabel" runat="server" Text='<%# Eval("names") %>' />
                        </div>
                        
                        <div class="price">
                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        </div>
                        <div class="buttom">
                            <a href="">Chi tiết</a>
                        </div>
                        <div class="buttom">
                            <a href="">Mua</a>
                        </div>   
                        </div>        
                    </ItemTemplate>
                </asp:DataList>
			    <asp:SqlDataSource ID="QLBH" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [product_id] = @product_id" InsertCommand="INSERT INTO [product] ([product_id], [productcategory_id], [sku], [names], [price], [discription], [img]) VALUES (@product_id, @productcategory_id, @sku, @names, @price, @discription, @img)" SelectCommand="SELECT [product_id], [productcategory_id], [sku], [names], [price], [discription], [img] FROM [product]" UpdateCommand="UPDATE [product] SET [productcategory_id] = @productcategory_id, [sku] = @sku, [names] = @names, [price] = @price, [discription] = @discription, [img] = @img WHERE [product_id] = @product_id">
                    <DeleteParameters>
                        <asp:Parameter Name="product_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="product_id" Type="Int32" />
                        <asp:Parameter Name="productcategory_id" Type="Int32" />
                        <asp:Parameter Name="sku" Type="String" />
                        <asp:Parameter Name="names" Type="String" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="discription" Type="String" />
                        <asp:Parameter Name="img" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="productcategory_id" Type="Int32" />
                        <asp:Parameter Name="sku" Type="String" />
                        <asp:Parameter Name="names" Type="String" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="discription" Type="String" />
                        <asp:Parameter Name="img" Type="String" />
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
					<p> We accept all major Credit Card/Debit Card/Internet Banking </p>
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
</asp:Content>
