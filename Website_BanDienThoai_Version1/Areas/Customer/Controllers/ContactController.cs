using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Website_BanDienThoai_Version1.Areas.Customer.Controllers
{
    [Area("Customer")]
    public class ContactController : Controller
    {
        //Trang liên hệ-Phan Đình Sơn
        public IActionResult Index()
        {
            return View();
        }
    }
}