using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Linq;
using System.Threading.Tasks;
using Website_BanDienThoai_Version1.Data;
using Website_BanDienThoai_Version1.Models;

namespace Website_BanDienThoai_Version1.Areas.Customer.Controllers
{
    [Area("Customer")]
    public class CommentsController : Controller
    {
        //Chức năng comment-Phan Đình Sơn
        private readonly ApplicationDbContext _db;

        public CommentsController(ApplicationDbContext db)
        {
            _db = db;
        }

        public IActionResult Index()
        {
           
            var Id = HttpContext.Session.GetInt32("ProductId");
            var comment = _db.Comments.Where(m => m.ProductsId == Id);
            int count = comment.Count();
            ViewBag.Title = count.ToString();
            return View(comment.ToList());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(string Content, string Name, string Email)
        {
            Comments comments = new Comments();
            var Id = HttpContext.Session.GetInt32("ProductId");
          
            ViewBag.ProductId = Convert.ToInt32(Id);
            if (ModelState.IsValid)
            {
                comments.ProductsId = Convert.ToInt32(Id);
                comments.Content = Content;
                comments.Name = Name;
                comments.Email = Email;
                comments.CommentDate = DateTime.Now;
                _db.Add(comments);
                await _db.SaveChangesAsync();
                return RedirectToAction("Details", "Home", new { Id = Convert.ToInt32(Id) });
            }
            return View(comments);
        }
    }
}