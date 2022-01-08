using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace OrderRequestLib.Models {
    [Table("OrderRequestDatabase.Users", Schema = "dbo")]
    public class User {
        
        [Key] public string UserID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
    }
}