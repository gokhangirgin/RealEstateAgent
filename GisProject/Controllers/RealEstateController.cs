using System;
using System.Collections.Generic;
using System.Web.Mvc;
using GisProject.Models;
using System.Data.Objects.DataClasses;
using System.Linq;
using System.Globalization;
using Microsoft.Web.Helpers;
namespace GisProject.Controllers
{
    public class RealEstateController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public JsonResult Create(RealEstate r,IEnumerable<string> URL)
        {

            GisDB db = new GisDB();
            foreach (string item in URL)
            {
                if(!string.IsNullOrEmpty(item))
                     r.images.Add(new Image { URL = item });
            }
            if(ModelState.IsValid){
            /*if (ReCaptcha.Validate("6LfdhtASAAAAABe8uMS2iuulbtfJlH_zMFb_h6Dh") || Convert.ToBoolean(Session["valid"]))
            {*/
                db.RealEstate.Add(r);
                db.SaveChanges();
            /*}*/
        }
            return Json(new { Id = r.Id, Title = r.Title, Latitude = r.Latitude, Longitude = r.Longitude, Description = r.Description, Price = r.Price, Status = (r.Status) ? "Rent" : "Sale" });
        }
        [HttpPost]
        public JsonResult Search(int Status = 0,decimal Price=0,int Room=0,int Msquare=0)
        {
            GisDB db = new GisDB();
            if (ModelState.IsValid)
            {
               /* if (ReCaptcha.Validate("6LfdhtASAAAAABe8uMS2iuulbtfJlH_zMFb_h6Dh") || Convert.ToBoolean(Session["valid"]))
                {
                    if(Session["valid"] == null)
                         Session["valid"] = true;*/
                    bool status = Convert.ToBoolean(Status);
                    var query = (from q in db.RealEstate
                                where q.Price <= Price && q.Room >= Room
                                && q.Status == status && q.Msquare >= Msquare
                                select new { Id = q.Id, Title = q.Title, Latitude = q.Latitude, Longitude = q.Longitude, Description = q.Description, Price = q.Price, Status = (q.Status) ? "Rent" : "Sale" }).ToList();
                    return Json(query);
                /*}
                else
                    ModelState.AddModelError("captcha", "Captcha is not correct!");*/
            }
            return null;
        }
        public JsonResult Random()
        {
            GisDB db = new GisDB();
            var query = (from q in db.RealEstate
                        orderby Guid.NewGuid()
                        select new { Id = q.Id, Title = q.Title, Latitude = q.Latitude, Longitude = q.Longitude, Description = q.Description, Price = q.Price, Status = (q.Status) ? "Rent" : "Sale" }).Take(10);
            return Json(query,JsonRequestBehavior.AllowGet);
        }
        public ActionResult Details(int Id)
        {
            GisDB db = new GisDB();
            var query = (from a in db.RealEstate
                         where a.Id == Id
                         select a).SingleOrDefault<RealEstate>();
            return View(query);
        }
    }
}
