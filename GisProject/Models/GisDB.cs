using System.Data.Entity;

namespace GisProject.Models
{
    public class GisDB : DbContext
    {
        public DbSet<RealEstate> RealEstate { get; set; }
        public DbSet<Image> Image { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Image>().HasRequired(i => i.realEstate)
                .WithMany(a => a.images).Map(x => x.MapKey("RealId")).WillCascadeOnDelete(true);
        }
    }
}