<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailPost.aspx.cs" Inherits="ReviewFood.DetailPost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chi tiết</title>
    <link href="AllCss/details.css" rel="stylesheet" />
</head>
<body>
     <div class="wrapper">
        <!-- Header -->
        <div class="header">
            <div class="clearfix">
                <div class="col col-1">
                    <div class="logo content">
                        <img src="../image/header/logo.png" alt="">
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
                            <a href="">
                                <button class="btn btn-primary">Đăng nhập</button>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="banner">
        <img src="../image/banner/banner1.png" alt="">
    </div>
    <div class="wrapper">
        <!-- Content-main -->
        <div class="content-main">
            <div class="main">
                <div class="clearfix">
                    <div class="col col-7">
                        <div class="heading">
                            <div class="icon">
                                <img src="../image/main/user.jpg" alt="">
                            </div>
                            <div class="title">
                                <h3><%:post.TenNguoiReview %></h3>
                                <div class="text">
                                    <p><%:post.ThoiGianReview.ToString("HH:mm dd/MM/yyyy") %> tại</p>
                                    <a href="#"><%:post.DiaChi %></a>
                                </div>
                            </div>
                        </div>
                        <div class="content-detail">
                            <div class="image">
                                <img src="../image/main/product/8.jpeg" alt="">
                            </div>
                            <div class="content-text">
                                <%:post.Content %>
                            </div>
                        </div>                        
                        <div class="address-review">
                            <div class="image"></div>
                            <div class="contact">
                                <h2><%:post.DiaChi %></h2>
                                
                            </div>
                        </div>
                        <div class="comment">
                            <div class="heading">
                                <p><b>1.815</b> lượt xem bài viết</p>
                                <h2>1 bình luận</h2>
                            </div>
                            <div class="contact">
                                <div class="contact-cmt">
                                    <div class="image"></div>
                                    <div class="text">
                                        <h2>Mạc Vi <span>11/12/2020 lúc 00:54</span></h2>
                                        <span>Đồ ăn ngon</span>
                                    </div>
                                </div>
                                <div class="contact-cmt">
                                    <div class="image"></div>
                                    <div class="text">
                                        <h2>Mạc Vi <span>11/12/2020 lúc 00:54</span></h2>
                                        <span>Đồ ăn ngon</span>
                                    </div>
                                </div>
                                <div class="contact-cmt">
                                    <div class="image"></div>
                                    <div class="text">
                                        <h2>Mạc Vi <span>11/12/2020 lúc 00:54</span></h2>
                                        <span>Đồ ăn ngon</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-cmt">
                                <form action="">
                                    <input type="text" class="form-control" placeholder="">
                                    <button type="submit">Nhận xét</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col col-3">
                        <div class="address-perfect">
                            <div class="heading">
                                <h2>Địa điểm nổi bật</h2>
                            </div>
                            <div class="list-perfect">
                                <ul class="menu menu-perfect">
                                    <li>
                                        <div class="image"></div>
                                        <div class="text">
                                            <a href="">Huyết chưng Phạm Văn Hai</a>
                                            <p>122 Phạm Văn Hai,Phường 03</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="image"></div>
                                        <div class="text">
                                            <a href="">Chạng Vạng Rooftop-Bạch Đằng</a>
                                            <p>Số 6, hẻm 72, Bạch Đằng</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="image"></div>
                                        <div class="text">
                                            <a href="">Lẩu bò hẻm 616</a>
                                            <p>302 Nguyễn Văn Đậu, Phường 1</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="image"></div>
                                        <div class="text">
                                            <a href="">Ốc cầu thang-Trần Hưng Đạo</a>
                                            <p>440 Đường Trần Hưng Đạo</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="image"></div>
                                        <div class="text">
                                            <a href="">Huyết chưng Phạm Văn Hai</a>
                                            <p>122 Phạm Văn Hai,Phường 03</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="image"></div>
                                        <div class="text">
                                            <a href="">Huyết chưng Phạm Văn Hai</a>
                                            <p>122 Phạm Văn Hai,Phường 03</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="image"></div>
                                        <div class="text">
                                            <a href="">Huyết chưng Phạm Văn Hai</a>
                                            <p>122 Phạm Văn Hai,Phường 03</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="notify">
                            <img src="../image/main/1.png" alt="">
                            <img src="../image/main/2.png" alt="">
                        </div>
                    </div>
                </div>
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
                    <span> XiXonKnight</span>
                </div>
            </div>
        </div>
</body>
</html>
