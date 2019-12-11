using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
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
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Comments comments)
        {
            if (ModelState.IsValid)
            {
                comments.CommentDate = DateTime.Now;
                _db.Add(comments);
                await _db.SaveChangesAsync();
                return RedirectToAction("Details","Home");
            }
            return View(comments);
           
        }
      
     
    }
}