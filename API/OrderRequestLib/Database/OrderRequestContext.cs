using Microsoft.EntityFrameworkCore;
using OrderRequestLib.Models;

namespace OrderRequestLib.Database {
    public class OrderRequestContext : DbContext {
        public OrderRequestContext(DbContextOptions<OrderRequestContext> options) 
            : base(options) {}


        public DbSet<Order> Orders { get; set; }
        public DbSet<Group> Groups { get; set; }
        public DbSet<User> Users { get; set; }
    }
}