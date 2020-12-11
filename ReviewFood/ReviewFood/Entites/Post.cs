using Abp.Domain.Entities.Auditing;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ReviewFood.Entites
{
    public class Post: FullAuditedEntity<long>
    {
        public string Content { get; set; }
        [ForeignKey(nameof(CreatorUserId))]
        public User User { get; set; }
    }
}