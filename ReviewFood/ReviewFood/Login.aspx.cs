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

        }

        protected void Login1_Click(object sender, EventArgs e)
        {
           
                var User = dbContext.Users.Where(s => s.UserName == userName.Text && s.Password == passWord.Text).FirstOrDefault();
                if (User == null)
                {
                ThongBao.Text = "Tên đăng nhập hoặc mật khẩu không chính xác";
                }
                else
                {
                    Session["User"] = User;
                Response.Redirect("Home.aspx");
                }
            
        }

        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}