using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using OrderRequestAPI.Models;

namespace OrderRequestAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class OrdersController : ControllerBase {
        [HttpGet]
        public List<Order> GetOrders() {
            List<Order> list = new List<Order>();
            list.Add(new Order("2 PM", "Walmart"));
            Console.WriteLine(list.Find(e => e.TimeLeaving == "2 PM"));
            return list;
        }
    }
}
