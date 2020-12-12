<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ReviewFood.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký</title>
    <link href="AllCss/register.css" rel="stylesheet" />
</head>
<body>
    <div class="wrapper-form">
        <div class="logo">
            <img src="image/header/logo.png" alt="">
        </div>
        <div class="form">
            <h2>Đăng Ký</h2>
            <form id="Register" runat="server" method="post">
                <div class="form-group username">
                    <input type="text" class="form-control " name="Username" placeholder="Tên đăng nhập">
                </div>
                <div class="form-group password">
                    <input type="password" class="form-control" name="Password" id="password" placeholder="Mật khẩu">
                </div>
                <div class="form-group password confirm-password">
                    <input type="password" class="form-control" name="RePassword" id="repassword" placeholder="Nhập lại mật khẩu">
                </div>
                <div class="form-group username">
                    <input type="text" class="form-control " name="FullName" placeholder="Họ tên">
                </div>
                <div class="form-group username">
                    <input type="email" class="form-control " name="Email" placeholder="Email">
                </div>
                <div class="form-group username">
                    <input type="text" class="form-control " name="Phone" placeholder="Số điện thoại">
                </div>
                
                <button class="btn-submit" type="submit">Đăng Ký</button>
                <button class="btn-cancel" type ="button"><a href="Login.aspx">Hủy</a></button>
            </form>
        </div>
    </div>
</body>
    <script>
var Username= document.getElementsByName("Username")[0];
var Password = document.getElementsByName("Password")[0];
var Repassword = document.getElementsByName("RePassword")[0];
var Email = document.getElementsByName("Email")[0];
var Phone = document.getElementsByName("Phone")[0];
function submit(){
    if(Username.value==''||Password.value==''||Repassword.value==''||Email.value==''||Phone.value==''){
        alert("Không được để trống");
        return false;
    }else if(Username.value.length <= 8 ||Username.value.length>=32){
        alert("Tên đăng nhập sai số ký tự quy định");
        Username.focus();
        return false;
    }else if(Password.value.length <= 8 ||Password.value.length>=32){
        alert("Mật khẩu sai số ký tự quy định");
        Password.style.borderColor="red"
        Password.focus();
        return false;
    }else if(Password.value != Repassword.value){
        alert("Bạn nhập lại mật khẩu sai");
        return false;
    }else if(validateEmail(Email.value)==false){
        return false;
    }else if(!isVietnamesePhoneNumber(Phone.value)){
        alert("Sai định dạng số điện thoại");
        return false;
    }
    else{
        return true;
    }
}
function validateEmail(email){
    if (/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(email))
  {
    return true
  }
    alert("You have entered an invalid email address!")
    return false
}
function isVietnamesePhoneNumber(number) {
  return /(03|07|08|09|01[2|6|8|9])+([0-9]{8})\b/.test(number);
}
    </script>
</html>
