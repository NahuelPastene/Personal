using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using PersonalGcba.Models;
using PersonalGcba.Repository;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace PersonalGcba.Controllers
{
    public class UserController : Controller
    {
        private readonly UserRepository _userRepository;
        private readonly areaRepository _areaRepository;
        public UserController(PersonalGcbaContext context)
        {
            _userRepository = new UserRepository(context);
            _areaRepository = new areaRepository(context);
        }
        public IActionResult Index()
        {
            var empleados = _userRepository.GetAll().OrderBy(x => x.Id);
            return View(empleados);
        }
        public IActionResult Delete(int Id)
        {
            Empleado empleado = _userRepository.GetById(Id);
            _userRepository.Delete(empleado);
            _userRepository.SaveChanges();
            return RedirectToAction("Index", "Home");
        }
        [HttpGet]
        public IActionResult Create()
        {
            ViewBag.listaAreas = new SelectList(GetAreas(), "IdArea", "NombreArea");
            return View("Create");
        }
        public IList<Area> GetAreas()
        {
            List<Area> listaAreas = _areaRepository.GetAll().ToList();
            return listaAreas;
        }
        [HttpPost]
        public IActionResult Create(Empleado empleado)
        {
            if (ModelState.IsValid)
            {
                _userRepository.Create(empleado);
                _userRepository.SaveChanges();
                return RedirectToAction("Index", "Home");
            }
            return View(empleado);
        }
        [HttpGet]
        public IActionResult Update(int Id)
        {
            var empleado = _userRepository.GetById(Id);
            ViewBag.list = _areaRepository.GetAll();
            return View(empleado);
        }
        [HttpPost]
        public IActionResult Update(Empleado empleado, int Id)
        {
            var user = _userRepository.GetById(empleado.Id);
            if (ModelState.IsValid)
            {
                user.Nombre = empleado.Nombre;
                user.Apellido = empleado.Apellido;
                user.Dni = empleado.Dni;
                user.FechaNacimiento = empleado.FechaNacimiento;
                user.Desarrollador = empleado.Desarrollador;
                user.Descripcion = empleado.Descripcion;
                user.IdArea = empleado.IdArea;
                _userRepository.Update(user);
                _userRepository.SaveChanges();
                return RedirectToAction("Index", "Home");
            }
            ViewBag.list = _areaRepository.GetAll();
            return View(empleado);
        }
    }
}
