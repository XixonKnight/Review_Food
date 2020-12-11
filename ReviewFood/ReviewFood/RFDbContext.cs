using ReviewFood.Entites;
using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace ReviewFood
{
    public partial class RFDbContext : DbContext
    {
        public RFDbContext()
            : base("name=RFDbContext")
        {
        }
        public DbSet<User> Users { get; set; }
        public DbSet<Post> Posts { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
