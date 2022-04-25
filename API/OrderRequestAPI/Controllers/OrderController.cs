using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using OrderRequestLib.Database;
using OrderRequestLib.Models; 
using System.Linq;

namespace OrderRequestAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class OrderController : ControllerBase {
        private readonly OrderRequestContext _context;
        public OrderController(OrderRequestContext context) {
            _context = context;
        }

        [HttpGet]
        public List<Order> GetAllOrders() {
            return _context.Orders.ToList();
        }

        [HttpPost]
        public void CreateOrder([FromBody] Order order) {
            _context.Add<Order>(order);
            _context.SaveChanges();
        }
    }
}
