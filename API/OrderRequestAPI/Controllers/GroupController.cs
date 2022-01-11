using Microsoft.AspNetCore.Mvc;
using OrderRequestLib.Database;
using OrderRequestLib.DependencyInjection;
using OrderRequestLib.Models;

namespace OrderRequestAPI.Controllers {
    [ApiController]
    [Route("api/[controller]")]
    public class GroupController : ControllerBase {
        private readonly OrderRequestContext _context;
        public GroupController(OrderRequestContext context) {
            _context = context;
        }

        [HttpPost]
        [Route("addgroup")]
        public void CreateGroup([FromBody] Group group) {
            _context.Add<Group>(group);
            _context.SaveChanges();
        }
    }
}