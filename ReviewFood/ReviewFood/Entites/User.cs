using Abp.Domain.Entities.Auditing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReviewFood.Entites
{
    public class User:FullAuditedEntity<long>
    {
        public string UserName { get; set; }
        public string Password { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Sdt { get; set; }
    }
}