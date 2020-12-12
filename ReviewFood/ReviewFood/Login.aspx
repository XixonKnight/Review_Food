<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ReviewFood.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rờ viu food</title>
    <link href="AllCss/Login.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
   <div class="wrapper-form">
        <div class="logo">
            <img src="image/header/logo.png" alt="">
        </div>
        <div class="form">
            <h2>Đăng Nhập</h2>
            <form id="formdangnhap" runat="server" method="post" onsubmit="return Login()">
                <div class="form-group username">
                    <input type="text" class="form-control " name="Username" id="Username" placeholder="Username">
                </div>
                <div class="form-group password">
                    <input type="password" class="form-control" name="Password" id="password" placeholder="Password">
                </div>
                <button class="btn-submit" type="submit">Đăng nhập</button>
            </form>
            <div class="register">
                <a href="Register.aspx">Đăng ký</a>
            </div>
        </div>
    </div>
</body>
    <script>
        function Login() {
            var username = document.getElementById("Username");
            var password = document.getElementById("password");

            if (username.value == '' || password.value == '') {
                alert("Không được để trống");
                return false;
            } else if (8 >= username.value.length || username.value.length >= 32) {
                username.focus();
                alert("Tên đăng nhập không đúng độ dài quy định");
                return false;
            } else if (8 >= password.value.length || password.value.length >= 32) {
                password.focus();
                alert("Mật khẩu nhập không đúng độ dài quy định");
                return false;
            } else {

                return true;
            }
        }
    </script>
</html>
