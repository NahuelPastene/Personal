using Microsoft.EntityFrameworkCore;
using PersonalGcba.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PersonalGcba.Repository
{
    public class UserRepository
    {
        private readonly PersonalGcbaContext _context;
        public UserRepository (PersonalGcbaContext context)
        {
            _context = context;
        }
        public void Create(Empleado empleado)
        {
            _context.Empleados.Add(empleado);
        }
        public void Update (Empleado empleado)
        {
            _context.Empleados.Update(empleado);
        }
        public void Delete(Empleado empleado)
        {
            _context.Empleados.Remove(empleado);
        }
        public Empleado GetById(int Id)
        {
            Empleado empleado = _context.Empleados.Where(x => x.Id == Id).FirstOrDefault();
            return empleado;
        }
        public IEnumerable<Empleado> GetAll()
        {
            return _context.Empleados;
        }
        public void SaveChanges()
        {
            _context.SaveChanges();
        }
        internal void GetById(Empleado empleado)
        {
            throw new NotImplementedException();
        }
    }
}
