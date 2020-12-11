<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ReviewFood.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rờ viu food</title>
    <link href="AllCss/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" method="post" runat="server">
        <div class ="wrapper">
            <div class="header">Trang đăng nhập rờ viu food</div>
            <div class ="row"> 
            <div class ="left">Tên đăng nhập</div>
            <div class ="right">
                <asp:TextBox ID="userName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" SetFocusOnError="true" ControlToValidate="userName" ValidationGroup="group1"></asp:RequiredFieldValidator>
            </div>
            </div>
            <div class ="row">
                <div class ="left">Mật khẩu</div>
                <div class ="right">
                    <asp:TextBox ID="passWord" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" SetFocusOnError="true" ControlToValidate="passWord" ValidationGroup="group1" ></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class ="button">
                <div class ="button1">
                    <asp:Button ID="Login1" runat="server" Text="Đăng nhập" OnClick="Login1_Click" />
                    </div>
                    <div class ="button1">
               
                    <asp:Button ID="register" runat="server" Text="Đăng ký" OnClick="register_Click" />
                </div>
                <asp:TextBox ID="ThongBao" runat="server"></asp:TextBox>
                </div>
            </div>         
        
       
    </form>
</body>
    <script>
        function ThongBao(){
            alert("Tên đăng nhập hoặc mật khẩu không đúng");
        }
    </script>
</html>
