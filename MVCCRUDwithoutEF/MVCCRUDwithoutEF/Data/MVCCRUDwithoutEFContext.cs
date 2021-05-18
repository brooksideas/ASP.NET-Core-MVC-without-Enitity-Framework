using Microsoft.EntityFrameworkCore;

namespace MVCCRUDwithoutEF.Data
{
    public class MVCCRUDwithoutEFContext : DbContext
    {
        public MVCCRUDwithoutEFContext(DbContextOptions<MVCCRUDwithoutEFContext> options)
            : base(options)
        {
        }

        public DbSet<MVCCRUDwithoutEF.Models.BookViewModel> BookViewModel { get; set; }
    }
}
