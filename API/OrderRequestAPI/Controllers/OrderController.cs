using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using OrderRequestLib.Database;
using OrderRequestLib.Models; 

namespace OrderRequestAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class OrderController : ControllerBase {
        private readonly OrderRequestContext _context;
        public OrderController(OrderRequestContext context) {
            _context = context;
        }

        [HttpPost]
        public void CreateOrder([FromBody] Order order) {
            _context.Add<Order>(order);
            _context.SaveChanges();
        }
    }
}
