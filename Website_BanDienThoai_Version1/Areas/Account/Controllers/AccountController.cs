﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Website_BanDienThoai_Version1.Data;
using Website_BanDienThoai_Version1.Models;
using Website_BanDienThoai_Version1.Models.ViewModel;

namespace Website_BanDienThoai_Version1.Areas.Account
{
    [Area("Account")]
    public class AccountController : Controller
    {
        private readonly ApplicationDbContext _db;
        [TempData]
        public string StatusMessage { get; set; }
        public AccountController(ApplicationDbContext db)
        {
            _db = db;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Login()
        {
            return View();
        }


        /*Tài khoản admin 
           username: phandinson  pass:son116
         */
        /*Tài khoản user
         username: lehongthai  pass:123456
       */
        [HttpPost]
        public ActionResult Login(LoginViewModel model)
        {
            //Xử lý đăng nhập lưu đăng nhập,điều hướng đăng nhập-Phan Phú Huy,Phan Đình Sơn
            if (ModelState.IsValid)
            {
                var log = _db.Users.Where(x => x.UserName.Equals(model.UserName) && x.Password.Equals(model.Password)).FirstOrDefault();
                if (log == null)
                {
                    TempData["StatusMessage"] = "Tài khoản hoặc mật khẩu bị sai!!!";

                    return View(model);
                }
                else
                {
                    HttpContext.Session.SetInt32("AccountId", log.Id);
                    HttpContext.Session.SetString("UserName", log.UserName);
                    if (model.UserName == "phandinhson")
                    {
                      
                        return RedirectToAction("Index", "Products", new { area = "Admin" });
                    }
                    

                    return RedirectToAction("Index", "Home", new { area = "Customer" });
                }
            }
            return View("Index");
        }
        //Đăng kí-Phan Đình Sơn
        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> Register(RegistrationViewModel model)
        {
            if (ModelState.IsValid)
            {
                _db.Database.ExecuteSqlCommand("EXECUTE DBO.Insert_Users {0},{1},{2},{3},{4},{5},{6}",
                   model.UserName, model.Password, model.Name, model.Email, model.Phone, model.DateOfBith, Int32.Parse(model.Gender));

                await _db.SaveChangesAsync();
                return RedirectToAction("Index", "Account");
            }
            return View(model);




        }
        //Đăng xuất-Phan Đình Sơn
        [HttpGet]
        public IActionResult Logout()
        {
            int value = -1;
            HttpContext.Session.SetInt32("AccountId", value);
            HttpContext.Session.SetString("UserName","");
            return RedirectToAction("Index", "Home", new { area = "Customer" });
        }
        //Thông tin tài khoản-Phan Đình Sơn
        public IActionResult AccountUser()
        {

            var Id = HttpContext.Session.GetInt32("AccountId");
            var AccUser = _db.Users.Find(Id);
            if (AccUser == null)
            {
                return RedirectToAction("Login", "Account");
            }
            ViewBag.Id = AccUser.Id;
            ViewBag.Name = AccUser.Name;
            ViewBag.Username = AccUser.UserName;
            ViewBag.Password = AccUser.Password;
            ViewBag.Email = AccUser.Email;
            ViewBag.Phone = AccUser.Phone;
            ViewBag.DateOfBirth = AccUser.DateOfBith;
            if (AccUser.Gender == 1)
            {
                ViewBag.Gender = "Nam";
            }
            else
            {
                ViewBag.Gender = "Nữ";
            }



            return View();
        }
        //Get: Change Account
        public async Task<IActionResult> ChangeAccount(int? id)
        {
            var currentId = HttpContext.Session.GetInt32("AccountId");
            if (id == null && id!=currentId)
            {
                return NotFound();
            }
            var user = await _db.Users.FindAsync(id);
            if (user == null)
            {
                return NotFound();
            }
            return View(user);
        }
        //Post: Change Account
        [HttpPost, ActionName("ChangeAccount")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> ChangeAccountPost(int id, Users user)
        {
            if (id != user.Id)
            {
                return NotFound();
            }
            if (ModelState.IsValid)
            {
               
                _db.Update(user);
                await _db.SaveChangesAsync();
                return RedirectToAction("Index", "Home", new { area = "Customer" });
            }
            return RedirectToAction("Index", "Home", new { area = "Customer" });
        }

        /// <summary>
        /// Get: FogetPassword
        /// </summary>

        public IActionResult FogetPassword()
        {
            return View();
        }

        public void ValidationMessage(string key, string alert, string value)
        {
            try
            {
                TempData.Remove(key);
                TempData.Add(key, value);
                TempData.Add("alertType", alert);
            }
            catch
            {
                Debug.WriteLine("TempDataMessage Error");
            }
        }
    }

}