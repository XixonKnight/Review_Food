using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReviewFood
{
    public partial class Login : System.Web.UI.Page
    {
        public RFDbContext dbContext = new RFDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                var userName = Request.Form.Get("Username");
                var passWord = Request.Form.Get("Password");
                var User = dbContext.Users.Where(s => s.UserName == userName && s.Password == passWord).FirstOrDefault();
                if (User == null)
                {
                    Response.Write("<h2 text-align:'center'> Sai tên đăng nhập hoặc mật khẩu</h2>");
                }
                else
                {
                    Session["User"] = User;
                    Response.Redirect("Home.aspx");
                }
            }
        }

        protected void Login1_Click(object sender, EventArgs e)
        {
            
        }

        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}