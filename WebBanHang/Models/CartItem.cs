namespace WebBanHang.Models
{
    public class CartItem
    {
        public int ProductId { get; set; }    // ID sản phẩm
        public string Name { get; set; }      // Tên sản phẩm
        public decimal Price { get; set; }    // Giá sản phẩm
        public int Quantity { get; set; }     // Số lượng
        public string? ImageUrl { get; set; } // Ảnh sản phẩm
    }
}
