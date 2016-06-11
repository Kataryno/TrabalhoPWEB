using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LuxCatering.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        [Authorize (Roles = "Admin")]
        public ActionResult About()
        {
            ViewBag.Message = "Your Aplication description page";
            return View();
        }
        [Authorize (Roles = "Clientes")]
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page";

            return View();
        }
    }
}