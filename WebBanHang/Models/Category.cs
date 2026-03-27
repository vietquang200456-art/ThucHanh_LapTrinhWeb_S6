using System.ComponentModel.DataAnnotations;

namespace WebBanHang.Models
{
    public class Category
    {
        [Key]
        public int Id { get; set; }
        [Required,StringLength(100)]
        public string Name { get; set; }
        public List<Product> Products { get; set; } = new List<Product>();
    }
}
