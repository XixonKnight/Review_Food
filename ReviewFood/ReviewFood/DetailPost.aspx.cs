using ReviewFood.Dto;
using ReviewFood.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReviewFood
{
    public partial class DetailPost : System.Web.UI.Page
    {
        public DetailPostDto post = new DetailPostDto();
        RFDbContext dbContext = new RFDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            var id = long.Parse(Request.QueryString["Id"]);
            post = dbContext.Posts.Where(s => s.Id == id).Select(s => new DetailPostDto { Id = s.Id, Content = s.Content, DiaChi = s.Address, ThoiGianReview = s.CreationTime, TenNguoiReview = s.User.FullName }).FirstOrDefault();

        }
    }
}