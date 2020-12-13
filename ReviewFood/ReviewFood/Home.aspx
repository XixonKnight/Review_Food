<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ReviewFood.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rờ viu</title>
    <link href="AllCss/home.css" rel="stylesheet" />
</head>
<body>
    <div class="wrapper">
        <!-- Header -->
        <div class="header">
            <div class="clearfix">
                <div class="col col-1">
                    <div class="logo content">
                        <a href="Home.aspx">
                        <img src="image/header/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col col-7">
                    <form action="" class="form-search ">
                        <input type="search" class="form-control" name="search" id="search" placeholder="Đi đâu, ăn gì?">
                        <button type="submit" class="btn"><i class="fas fa-search"></i></button>
                    </form>
                </div>
                <div class="col col-2">
                    <ul class="menu menu-nav">
                        <li><a href=""><i class="fas fa-bell"></i></a></li>
                        <li>
                            <a href="../login/login.html">
                                <button class="btn btn-primary">Đăng nhập</button>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Banner -->

        <div class="banner">
            <img src="image/banner/banner.png" alt="">
        </div>

        <!-- Nav -->
        <nav>
            <div class="nav-bar">
                <div class="title-button">
                    <h3>Đề Xuất</h3>
                    <a href="AddPost.aspx">Thêm mới</a>
                </div>
                <ul class="menu menu-nav">
                    <li><a href="" class="active">Tất Cả</a></li>
                    <li><a href="">Trending</a></li>
                    <li><a href="">Ăn trưa</a></li>
                    <li><a href="">Gần bạn</a></li>
                    <li><a href="">Du lịch</a></li>
                    <li><a href="">Giúp đỡ</a></li>
                </ul>
            </div>
        </nav>
        <!-- Content-main -->
        <div class="content-main">
            <div class="clearfix">
                <%--<div class="col col-3">--%>

                <%--<div class="products">--%>
                <%for (int i = 0; i < danhSachReviewDtos.Count; i++) %>
                <%{ %>
                <div class="content-product content col col-3">
                    <div class="image">
                        <div class="overload">
                            <div class="bookmark">
                                <div class="icon-image"></div>
                            </div>
                            <p class="text-content">
                                <%:danhSachReviewDtos[i].Content%>,
                            </p>
                        </div>
                        <img src="image/main/product/1.jpeg" alt="">
                    </div>
                    <div class="text">
                        <a href="DetailPost.aspx?Id=<%:danhSachReviewDtos[i].Id%>">
                            <p><%:danhSachReviewDtos[i].Address%> </p>
                        </a>
                        <div class="poster">
                            <div class="user">
                                <img src="image/main/user.jpg" alt="">
                                <span><%:danhSachReviewDtos[i].UserName%></span>
                            </div>
                            <div class="count-like">
                                <i class="fas fa-thumbs-up"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <%} %>
                <%--</div>--%>
                <%--</div>--%>
            </div>
        </div>

    </div>
    <!-- Footer -->
    <div class="footer">
        <div class="wrapper">
            <div class="top">
                <div class="menu-footer">
                    <h2>Công thức</h2>
                    <ul class="menu menu-banner">
                        <li><a href="">Món ăn</a></li>
                        <li><a href="">Đồ uống</a></li>
                    </ul>
                </div>
                <div class="menu-footer">
                    <h2>Địa điểm</h2>
                    <ul class="menu menu-banner">
                        <li><a href="">Nhà hàng</a></li>
                        <li><a href="">Cà Phê</a></li>
                        <li><a href="">Quán xá</a></li>
                    </ul>
                </div>

                <div class="menu-footer">
                    <h2>Sức khỏe</h2>
                    <ul class="menu menu-banner">
                        <li><a href="">Bệnh</a></li>
                        <li><a href="">Thuốc</a></li>
                        <li><a href="">Dinh dưỡng</a></li>
                    </ul>
                </div>

                <div class="menu-footer">
                    <h2>Làm đẹp</h2>
                    <ul class="menu menu-banner">
                        <li><a href="">Mỹ phẩm</a></li>
                        <li><a href="">Tự nhiên</a></li>
                        <li><a href="">Thẩm mỹ</a></li>
                        <li><a href="">Bí quyết</a></li>
                    </ul>
                </div>
                <div class="menu-footer">
                    <h2>Du lịch</h2>
                    <ul class="menu menu-banner">
                        <li><a href="">Khám phá</a></li>
                        <li><a href="">Văn hóa</a></li>
                    </ul>
                </div>
                <div class="menu-footer">
                    <h2>Kinh nghiệm</h2>
                    <ul class="menu menu-banner">
                        <li><a href="">Góc bếp</a></li>
                        <li><a href="">Mẹo vặt</a></li>
                        <li><a href="">Đồ gia dụng</a></li>
                    </ul>
                </div>
            </div>
            <div class="follow">
                <h2>Follow</h2>
                <ul class="menu menu-link">
                    <li><a href=""><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href=""><i class="fab fa-twitter"></i></a></li>
                    <li><a href=""><i class="fab fa-instagram"></i></a></li>
                    <li><a href=""><i class="fab fa-linkedin-in"></i></a></li>
                </ul>
            </div>
            <div class="bottom">
                <div class="copyright">
                    <span>&copy;</span>
                    <span>XiXonKnight</span>
                </div>
            </div>
        </div>
        <!-- Scroll to Top -->
        <div class="back-to-top">
            <button id="up-top"><i class="fa fa-chevron-up"></i></button>
        </div>
    </div>
</body>
</html>
