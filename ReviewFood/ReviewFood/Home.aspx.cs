using ReviewFood.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReviewFood
{
    public partial class Home : System.Web.UI.Page
    {
        RFDbContext dbContext = new RFDbContext();
        public List<DanhSachReviewDto> danhSachReviewDtos = new List<DanhSachReviewDto>();
        protected void Page_Load(object sender, EventArgs e)
        {

            danhSachReviewDtos = dbContext.Posts.OrderByDescending(s=>s.CreationTime).Select(s => new DanhSachReviewDto { Address = s.Address,Content=s.Content,Id=s.Id,UserName=s.User.FullName }).ToList();
        }
    }
}