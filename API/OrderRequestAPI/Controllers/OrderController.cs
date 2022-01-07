using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using OrderRequestLib.Models; 

namespace OrderRequestAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class OrdersController : ControllerBase {
        [HttpGet]
        public List<Order> GetOrders() {
            List<Order> list = new List<Order>();
            list.Add(new Order("2 PM", "Walmart"));
            list.Add(new Order("1 PM", "Starbucks"));
            list.Add(new Order("3 PM", "Target"));
            return list;
        }
    }
}
