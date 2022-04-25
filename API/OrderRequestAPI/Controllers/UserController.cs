using System;
using Microsoft.AspNetCore.Mvc;
using OrderRequestLib.Database;
using OrderRequestLib.Models;
using System.Collections.Generic;
using System.Linq;

namespace OrderRequestAPI.Controllers {
    [ApiController]
    [Route("api/[controller]")]
    public class UserController : ControllerBase {
        private readonly OrderRequestContext _context;
        public UserController(OrderRequestContext context) {
            _context = context;
        }

        [HttpGet]
        public List<User> GetAllUsers() {
            return _context.Users.ToList();
        }

        [HttpPost]
        [Route("adduser")]
        public void CreateUser([FromBody] User user) {
            _context.Add<User>(user);
            _context.SaveChanges();
        }
        
    }
}