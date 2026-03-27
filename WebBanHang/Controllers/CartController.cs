using Microsoft.AspNetCore.Mvc;
using WebBanHang.Models;
using WebBanHang.Helpers;
using WebBanHang.Data;
using Microsoft.AspNetCore.Authorization;

namespace WebBanHang.Controllers
{
    public class CartController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CartController(ApplicationDbContext context)
        {
            _context = context;
        }

        // Thêm vào giỏ hàng
        [Authorize]
        public IActionResult AddToCart(int id)
        {
            var product = _context.Products.Find(id);
            if (product == null)
                return NotFound();

            List<CartItem> cart = HttpContext.Session.GetObjectFromJson<List<CartItem>>("Cart") ?? new List<CartItem>();

            var item = cart.FirstOrDefault(c => c.ProductId == id);
            if (item != null)
            {
                item.Quantity++; // tăng số lượng nếu đã có
            }
            else
            {
                cart.Add(new CartItem
                {
                    ProductId = product.Id,
                    Name = product.Name,
                    Price = product.Price,
                    Quantity = 1,
                    ImageUrl = product.ImageUrl
                });
            }

            HttpContext.Session.SetObjectAsJson("Cart", cart);

            return RedirectToAction("Index", "Product"); // trở về danh sách sản phẩm
        }

        // Xem giỏ hàng
        public IActionResult Index()
        {
            List<CartItem> cart = HttpContext.Session.GetObjectFromJson<List<CartItem>>("Cart") ?? new List<CartItem>();
            return View(cart);
        }

        // Xóa sản phẩm khỏi giỏ
        public IActionResult Remove(int id)
        {
            List<CartItem> cart = HttpContext.Session.GetObjectFromJson<List<CartItem>>("Cart") ?? new List<CartItem>();
            var item = cart.FirstOrDefault(c => c.ProductId == id);
            if (item != null)
            {
                cart.Remove(item);
                HttpContext.Session.SetObjectAsJson("Cart", cart);
            }
            return RedirectToAction("Index");
        }

        // Clear giỏ hàng
        public IActionResult Clear()
        {
            HttpContext.Session.Remove("Cart");
            return RedirectToAction("Index");
        }
        [HttpPost]
        public IActionResult UpdateQuantity(int ProductId, string action)
        {
            List<CartItem> cart = HttpContext.Session.GetObjectFromJson<List<CartItem>>("Cart") ?? new List<CartItem>();
            var item = cart.FirstOrDefault(x => x.ProductId == ProductId);

            if (item != null)
            {
                if (action == "increase")
                {
                    // LỖI CŨ CỦA BẠN: item.Quantity = 0;
                    item.Quantity++; // Phải là tăng lên 1
                }
                else if (action == "decrease")
                {
                    item.Quantity--;
                    if (item.Quantity <= 0)
                    {
                        cart.Remove(item);
                    }
                }
                HttpContext.Session.SetObjectAsJson("Cart", cart);
            }

            // Nó sẽ load lại trang Index của Cart
            return RedirectToAction("Index");
        }
    }
}