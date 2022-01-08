using Microsoft.EntityFrameworkCore;
using OrderRequestLib.Models;

namespace OrderRequestLib.Database {
    public class OrderRequestContext : DbContext {
        public OrderRequestContext(DbContextOptions<OrderRequestContext> options) 
            : base(options) {}
        public DbSet<User> Users { get; set; }
    }
}