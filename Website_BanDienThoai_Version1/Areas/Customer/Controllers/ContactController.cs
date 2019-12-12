using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Website_BanDienThoai_Version1.Data;
using Website_BanDienThoai_Version1.Models;

namespace Website_BanDienThoai_Version1.Areas.Customer.Controllers
{
    [Area("Customer")]
    public class ContactController : Controller
    {
        //Trang liên hệ-Phan Đình Sơn
        private readonly ApplicationDbContext _db;

        public ContactController(ApplicationDbContext db)
        {
            _db = db;
        }

        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(string Opinion, string Name, string Email)
        {
            Contact contact = new Contact();
            if (ModelState.IsValid)
            { 
                contact.Opinion = Opinion;
                contact.Name = Name;
                contact.Email = Email;
                contact.ContactDate = DateTime.Now;
                _db.Add(contact);
                await _db.SaveChangesAsync();
                return RedirectToAction("Index", "Contact");
            }
            return View(contact);
        }
    }
}