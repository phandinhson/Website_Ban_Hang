﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Website_BanDienThoai_Version1.Models;
using Website_BanDienThoai_Version1.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Http;
using Website_BanDienThoai_Version1.Extentions;

namespace Website_BanDienThoai_Version1.Controllers
{
    [Area("Customer")]
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext _db;
        public HomeController(ApplicationDbContext db)
        {
            _db = db;
        }
        //Tìm kiếm theo tên-Phan Phú huy
        public async Task<IActionResult> Search( string searchString)
        {
            
            var productList = from m in _db.Products
                              select m;

            if (!String.IsNullOrEmpty(searchString))
            {
                productList = productList.Where(s => s.Name.Contains(searchString));
            }
            return View( await productList.ToListAsync());
           
        }
       
        public async Task<IActionResult> Index()
        {
          
            var productList = await _db.Products.Include(m => m.Category).Include(m => m.SpecialTag).ToListAsync();
            return View(productList);
          
        }
        public async Task<IActionResult> Details(int id)
        {
            var product = await _db.Products
                .Include(m => m.Category)
                .Include(m => m.SpecialTag)
                .Where(m => m.Id == id)
                .FirstOrDefaultAsync();
            return View(product);

        }
        [HttpPost, ActionName("Details")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DetailsPost(int id)
        {
            List<int> lstShoppingCart = HttpContext.Session.Get<List<int>>("ssShoppingCart");
            if (lstShoppingCart == null)
            {
                lstShoppingCart = new List<int>();
            }
            lstShoppingCart.Add(id);
            HttpContext.Session.Set("ssShoppingCart", lstShoppingCart);
           


            return RedirectToAction(nameof(Index));
        }

    }
}
