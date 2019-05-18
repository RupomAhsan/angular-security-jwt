using Microsoft.EntityFrameworkCore;

namespace AngularBasicApi.Model
{
  public class AngularBasicDbContext : DbContext
  {
    public DbSet<Player> Players { get; set; }
    public DbSet<Club> Clubs { get; set; }

    // private const string CONN =
    //               @"Server=Localhost;
    //                 Database=PTC-Pluralsight;
    //                 Trusted_Connection=True;
    //                 MultipleActiveResultSets=true";

    private const string CONN = @"data source=localhost;
   initial catalog=Angular-Basic;
   Integrated Security=SSPI;
    MultipleActiveResultSets=true";

    protected override void OnConfiguring(
                DbContextOptionsBuilder optionsBuilder)
    {
      optionsBuilder.UseSqlServer(CONN);
    }
  }
}
