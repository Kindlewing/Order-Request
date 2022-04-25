using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace OrderRequestLib.Models {
    [Table("OrderRequestDatabase.Orders", Schema = "dbo")]
    public class Order {
        [Key]
        public int OrderId { get; set; }
        public string TimeLeaving { get; set; }
        public string Destination { get; set; }
    }
}