using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using PersonalGcba.Models;
using PersonalGcba.Repository;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace PersonalGcba.Controllers
{
    public class HomeController : Controller
    {
        private readonly UserRepository _userRepository;

        public HomeController(PersonalGcbaContext context)
        {
            _userRepository = new UserRepository(context);
        }

        public IActionResult Index()
        {
            return RedirectToAction("Index", "User");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
