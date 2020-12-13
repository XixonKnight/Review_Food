namespace ReviewFood.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class fixPost : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Posts", "Address", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Posts", "Address");
        }
    }
}
