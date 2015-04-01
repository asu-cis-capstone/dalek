using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Table4.Models;

namespace Table4.Controllers
{
    public class TablesController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();


        [HttpPost]
        public ActionResult Servers()
        {
            globalvar.Server1 = "Mike";
            ViewBag.Server1 = globalvar.Server1;
            ViewBag.Server2 = globalvar.Server2;
            ViewBag.Server3 = globalvar.Server3;
            ViewBag.Server4 = globalvar.Server4;
            ViewBag.Server5 = globalvar.Server5;
            ViewBag.Server6 = globalvar.Server6;
            ViewBag.Server7 = globalvar.Server7;
            ViewBag.Server8 = globalvar.Server8;
            ViewBag.Server9 = globalvar.Server9;

            return PartialView("_Servers");
        }

        [HttpPost]
        public ActionResult Reserve(string press)
        {
            globalvar.reserveIndex = press;
            return View("Reserve", db.Tables.ToList());
        }

        [HttpPost]
        public ActionResult ReserveTable(int? pressed)
        {
            var table = db.Tables.Where(t => t.number == pressed).FirstOrDefault();
            if (table.status == 3)
            {
                table.status = 0;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                switch (globalvar.reserveIndex)
                {
                    case "4":
                        return RedirectToAction("Index4");
                    case "5":
                        return RedirectToAction("Index5");
                    case "6":
                        return RedirectToAction("Index6");
                    case "7":
                        return RedirectToAction("Index7");
                    case "8":
                        return RedirectToAction("Index8");
                    case "9":
                        return RedirectToAction("Index9");
                    case "10":
                        return RedirectToAction("Index10");
                    case "11":
                        return RedirectToAction("Index11");
                    case "12":
                        return RedirectToAction("Index12");  
                    default:
                        return RedirectToAction("Index12");
                }
            }
            else
            {
                table.status = 3;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                switch (globalvar.reserveIndex)
                {
                    case "4":
                        return RedirectToAction("Index4");
                    case "5":
                        return RedirectToAction("Index5");
                    case "6":
                        return RedirectToAction("Index6");
                    case "7":
                        return RedirectToAction("Index7");
                    case "8":
                        return RedirectToAction("Index8");
                    case "9":
                        return RedirectToAction("Index9");
                    case "10":
                        return RedirectToAction("Index10");
                    case "11":
                        return RedirectToAction("Index11");
                    case "12":
                        return RedirectToAction("Index12");
                    default:
                        return RedirectToAction("Index12");
                }
            }
        }

        [HttpPost]
        public ActionResult ResetTable()
        {
            var tablelist = db.Tables.ToList();
            foreach (var item in tablelist)
            {
                item.status = 0;
                db.Entry(item).State = EntityState.Modified;
                db.SaveChanges();
                return View("Index");
            }
            return RedirectToAction("Index4");
        }

        [HttpPost]
        public ActionResult ChangeStatus4(int? pressed)
        {
            var table = db.Tables.Where(t => t.number == pressed).FirstOrDefault();
            if ((table.status == 0) || (table.status == 1))
            {
                table.status = table.status + 1;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index4");
            }
            else if (table.status == 2)
            {
                table.status = 0;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index4");
            }
            else
            {
                return RedirectToAction("Index4");
            }

        }

        [HttpPost]
        public ActionResult ChangeStatus5(int? pressed)
        {
            var table = db.Tables.Where(t => t.number == pressed).FirstOrDefault();
            if ((table.status == 0) || (table.status == 1))
            {
                table.status = table.status + 1;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index5");
            }
            else if (table.status == 2)
            {
                table.status = 0;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index5");
            }
            else
            {
                return RedirectToAction("Index5");
            }

        }

        [HttpPost]
        public ActionResult ChangeStatus6(int? pressed)
        {
            var table = db.Tables.Where(t => t.number == pressed).FirstOrDefault();
            if ((table.status == 0) || (table.status == 1))
            {
                table.status = table.status + 1;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index6");
            }
            else if (table.status == 2)
            {
                table.status = 0;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index6");
            }
            else
            {
                return RedirectToAction("Index6");
            }

        }

        [HttpPost]
        public ActionResult ChangeStatus7(int? pressed)
        {
            var table = db.Tables.Where(t => t.number == pressed).FirstOrDefault();
            if ((table.status == 0) || (table.status == 1))
            {
                table.status = table.status + 1;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index7");
            }
            else if (table.status == 2)
            {
                table.status = 0;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index7");
            }
            else
            {
                return RedirectToAction("Index7");
            }

        }

        [HttpPost]
        public ActionResult ChangeStatus8(int? pressed)
        {
            var table = db.Tables.Where(t => t.number == pressed).FirstOrDefault();
            if ((table.status == 0) || (table.status == 1))
            {
                table.status = table.status + 1;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index8");
            }
            else if (table.status == 2)
            {
                table.status = 0;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index8");
            }
            else
            {
                return RedirectToAction("Index8");
            }

        }

        [HttpPost]
        public ActionResult ChangeStatus9(int? pressed)
        {
            var table = db.Tables.Where(t => t.number == pressed).FirstOrDefault();
            if ((table.status == 0) || (table.status == 1))
            {
                table.status = table.status + 1;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index9");
            }
            else if (table.status == 2)
            {
                table.status = 0;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index9");
            }
            else
            {
                return RedirectToAction("Index9");
            }

        }

        [HttpPost]
        public ActionResult ChangeStatus10(int? pressed)
        {
            var table = db.Tables.Where(t => t.number == pressed).FirstOrDefault();
            if ((table.status == 0) || (table.status == 1))
            {
                table.status = table.status + 1;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index10");
            }
            else if (table.status == 2)
            {
                table.status = 0;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index10");
            }
            else
            {
                return RedirectToAction("Index10");
            }

        }

        [HttpPost]
        public ActionResult ChangeStatus11(int? pressed)
        {
            var table = db.Tables.Where(t => t.number == pressed).FirstOrDefault();
            if ((table.status == 0) || (table.status == 1))
            {
                table.status = table.status + 1;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index11");
            }
            else if (table.status == 2)
            {
                table.status = 0;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index11");
            }
            else
            {
                return RedirectToAction("Index11");
            }

        }

        [HttpPost]
        public ActionResult ChangeStatus12(int? pressed)
        {
            var table = db.Tables.Where(t => t.number == pressed).FirstOrDefault();
            if ((table.status == 0) || (table.status == 1))
            {
                table.status = table.status + 1;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index12");
            }
            else if (table.status == 2)
            {
                table.status = 0;
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index12");
            }
            else
            {
                return RedirectToAction("Index12");
            }

        }

    
        // GET: Tables
        public ActionResult Index4()
        {
            return View("4man", db.Tables.ToList());
        }
        public ActionResult Index5()
        {
            return View("5man", db.Tables.ToList());
        }
        public ActionResult Index6()
        {
            return View("6man", db.Tables.ToList());
        }
        public ActionResult Index7()
        {
            return View("7man", db.Tables.ToList());
        }
        public ActionResult Index8()
        {
            return View("8man", db.Tables.ToList());
        }
        public ActionResult Index9()
        {
            return View("9man", db.Tables.ToList());
        }
        public ActionResult Index10()
        {
            return View("10man", db.Tables.ToList());
        }
        public ActionResult Index11()
        {
            return View("11man", db.Tables.ToList());
        }
        public ActionResult Index12()
        {
            return View("12man", db.Tables.ToList());
        }

        // GET: Tables/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Table table = db.Tables.Find(id);
            if (table == null)
            {
                return HttpNotFound();
            }
            return View(table);
        }

        // GET: Tables/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Tables/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,number,status,tablename")] Table table)
        {
            if (ModelState.IsValid)
            {
                db.Tables.Add(table);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(table);
        }

        // GET: Tables/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Table table = db.Tables.Find(id);
            if (table == null)
            {
                return HttpNotFound();
            }
            return View(table);
        }

        // POST: Tables/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,number,status,tablename")] Table table)
        {
            if (ModelState.IsValid)
            {
                db.Entry(table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(table);
        }

        // GET: Tables/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Table table = db.Tables.Find(id);
            if (table == null)
            {
                return HttpNotFound();
            }
            return View(table);
        }

        // POST: Tables/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Table table = db.Tables.Find(id);
            db.Tables.Remove(table);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
