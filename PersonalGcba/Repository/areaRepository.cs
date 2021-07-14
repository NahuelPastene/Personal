using PersonalGcba.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PersonalGcba.Repository
{
    public class areaRepository
    {
        private readonly PersonalGcbaContext _context;
        public areaRepository(PersonalGcbaContext context)
        {
            _context = context;
        }
        public Area GetById(int Id)
        {
            Area area = _context.Areas.Where(x => x.IdArea == Id).FirstOrDefault();
            return area;
        }
        public IEnumerable<Area> GetAll()
        {
            return _context.Areas;
        }
        internal void GetById(Area area)
        {
            throw new NotImplementedException();
        }
    }
}
