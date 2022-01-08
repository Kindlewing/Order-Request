using System;
using Microsoft.AspNetCore.Mvc;
using OrderRequestLib.Database;
using OrderRequestLib.Models;

namespace OrderRequestAPI.Controllers {
    [Route("api/[controller]")]
    public class UserController : ControllerBase {
        private readonly OrderRequestContext _context;
        public UserController(OrderRequestContext context) {
            _context = context;
        }

        [HttpPost]
        [Route("adduser")]
        public void AddUser([FromBody] User user) {
            Console.WriteLine(user.FirstName);
            _context.Add<User>(user);
            _context.SaveChanges();
        }
        
    }
}