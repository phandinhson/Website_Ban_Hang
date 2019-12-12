using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Website_BanDienThoai_Version1.Data;
using Website_BanDienThoai_Version1.Models;

namespace Website_BanDienThoai_Version1.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class StaticticalController : Controller
    {
      

        private readonly ApplicationDbContext _db;
       
        public StaticticalController(ApplicationDbContext db)
        {
            _db = db;
        }
        public IActionResult Index()
        {
            return View(_db.Contact.OrderByDescending(f=>f.ContactDate).ToList());
        }
    }
}