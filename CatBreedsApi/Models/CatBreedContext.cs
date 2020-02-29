using Microsoft.EntityFrameworkCore;

namespace CatBreedsApi.Models
{
    public class CatBreedContext : DbContext
    {
        public CatBreedContext(DbContextOptions<CatBreedContext> options)
            : base(options)
        {
        }

        public DbSet<CatBreed> CatBreeds { get; set; }
    }
}