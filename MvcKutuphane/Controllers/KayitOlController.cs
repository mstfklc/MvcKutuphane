using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcKutuphane.Models.Entity;
namespace MvcKutuphane.Controllers
{
    public class KayitOlController : Controller
    {
        // GET: KayitOl
        DBKUTUPHANEEntities db = new DBKUTUPHANEEntities();
        [HttpGet]
        public ActionResult Kayit()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Kayit(TBLUYELER p)
        {
            if (!ModelState.IsValid)
            {
                return View("Kayit");
            }
            var existingUser = db.TBLUYELER.FirstOrDefault(u => u.MAIL == p.MAIL);
            if (existingUser != null)
            {
                ModelState.AddModelError("MAIL", "Bu e-posta adresi zaten kullanılmaktadır.");
                return View("Kayit");
            }
            db.TBLUYELER.Add(p);
            db.SaveChanges();
            return View();
        }
    }
}