using Abp.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReviewFood.Dto
{
    public class DanhSachReviewDto:Entity<long>
    {
        public string Address { get; set; }
        public string Content { get; set; }
        public string UserName { get; set; }
    }
}