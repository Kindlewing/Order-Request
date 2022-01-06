namespace OrderRequestAPI.Models {
    public class Order {
        public string TimeLeaving { get; set; }
        public string Destination { get; set; }

        public Order(string timeLeaving, string destination) {
            TimeLeaving = timeLeaving;
            Destination = destination;
        }
    }
}