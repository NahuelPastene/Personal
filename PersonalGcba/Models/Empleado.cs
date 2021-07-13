using System;
using System.Collections.Generic;

#nullable disable

namespace PersonalGcba.Models
{
    public partial class Empleado
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int Dni { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string Desarrollador { get; set; }
        public string Descripcion { get; set; }
        public int IdArea { get; set; }

        public virtual Area IdAreaNavigation { get; set; }
    }
}
