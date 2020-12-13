using ReviewFood.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReviewFood
{
    public partial class AddPost : System.Web.UI.Page
    {
        RFDbContext dbContext = new RFDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                var user = Session["User"];
                User DetailUser = (User)user; 
                if(DetailUser == null)
                {
                    Response.Redirect("Login.aspx");
                }
                var address = Request.Form.Get("DiaChi");
                var content = Request.Form.Get("Content");
                var addPost = new Post
                {
                    Address = address,
                    Content = content,
                    CreatorUserId = DetailUser.Id
                };
                dbContext.Posts.Add(addPost);
                dbContext.SaveChanges();
                Response.Redirect($"DetailPost.aspx?Id={addPost.Id}");
            }
        }
    }
}