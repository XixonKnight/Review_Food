using ReviewFood.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReviewFood.Dto
{
    public class DetailPostDto
    {
        public long Id { get; set; }
        public DateTime ThoiGianReview { get; set; }
        public string TenNguoiReview { get; set; }
        public string DiaChi { get; set; }
        public string Content { get; set; }
    }
}