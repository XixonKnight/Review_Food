<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPost.aspx.cs" Inherits="ReviewFood.AddPost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thêm review</title>
    <link href="AllCss/AddReview.css" rel="stylesheet" />
</head>
<body>
    <div class="wrapper">
        <div class="grid1">
            <div class="logo content">
                <a href="Home.aspx">
                    <img src="../image/header/logo.png" alt="">
                </a>
            </div>
        </div>
        <div class="grid2">
        </div>
        <div class="grid3"></div>
        <div class="grid4"></div>
        <div class="grid5">
            <div class="FormControl">
                <div class="title">Thêm mới Rờ viu</div>
                <form runat="server" method="post" class="Form">
                    <div class="Content">
                        Địa chỉ:
                        <input class="address" type="text" name="DiaChi" placeholder="Địa chỉ quán">
                    </div>
                    <div class="Content">
                        Rờ viu:
                        <textarea class="Review" placeholder="Rờ viu đi nào" name="Content"></textarea>
                    </div>
                    <button class="submit" type="submit">Xác nhận rờ viu</button>
                    <button class="submit"><a href="Home.aspx">Quay lại trang chủ</a></button>
                </form>
            </div>
        </div>
        <div class="grid6"></div>
        <div class="grid7"></div>
        <div class="grid8"></div>
        <div class="grid9"></div>
    </div>
</body>
</html>
