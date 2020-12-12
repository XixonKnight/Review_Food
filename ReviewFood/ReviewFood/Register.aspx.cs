using ReviewFood.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReviewFood
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                var userName = Request.Form.Get("Username");
                var passWord = Request.Form.Get("Password");
                var Email = Request.Form.Get("Email");
                var Phone = Request.Form.Get("Phone");
                var FullName = Request.Form.Get("FullName");
                var dbContext = new RFDbContext();
                if (dbContext.Users.Any(s => s.Email == Email))
                {
                    Response.Write("Email đã tồn tại trên hệ thống");
                    return;
                }
                if(dbContext.Users.Any(s=>s.UserName == userName))
                {
                    Response.Write("Tên đăng nhập đã tồn tại trên hệ thống");
                    return;
                }
                if(dbContext.Users.Any(s=>s.Sdt == Phone))
                {
                    Response.Write("Số điện thoại đã tồn tại trên hệ thống");
                    return;
                }
                var user = new User
                {
                    Sdt = Phone,
                    FullName = FullName,
                    UserName = userName,
                    Password = passWord,
                    Email = Email
                };
                dbContext.Users.Add(user);
                dbContext.SaveChanges();
                Session["User"] = user;
                Response.Redirect("Home.aspx");

            }
        }
    }
}