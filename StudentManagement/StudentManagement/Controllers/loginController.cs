using Microsoft.Ajax.Utilities;
using StudentManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentManagement.Controllers
{
    public class loginController : Controller
    {
        TestEntities db = new TestEntities();
        // GET: login
        public ActionResult Index()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Index(user objchk)
        {
            if (ModelState.IsValid)
            {
                var obj = db.users.Where(x => x.username.Equals(objchk.username) && x.password.Equals(objchk.password)).FirstOrDefault();
                if (obj != null)
                {
                    Session["UserID"] = obj.id.ToString();
                    Session["UserName"] = obj.username.ToString();

                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("", "The username or password is incorrect");

                }
            }
                return View(objchk);

        }


        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Login");
        }

    }
}