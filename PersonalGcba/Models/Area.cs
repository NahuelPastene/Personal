using System;
using System.Collections.Generic;

#nullable disable

namespace PersonalGcba.Models
{
    public partial class Area
    {
        public Area()
        {
            Empleados = new HashSet<Empleado>();
        }

        public int IdArea { get; set; }
        public string NombreArea { get; set; }

        public virtual ICollection<Empleado> Empleados { get; set; }
    }
}
