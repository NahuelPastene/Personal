using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace PersonalGcba.Models
{
    public partial class Empleado
    {
        [DisplayName("Id")]
        public int Id { get; set; }
        [Required(ErrorMessage = "El campo Nombre es requerido.")]
        [DisplayName("Nombre")]
        public string Nombre { get; set; }
        [Required(ErrorMessage = "El campo Apellido es requerido.")]
        [DisplayName("Apellido")]
        public string Apellido { get; set; }
        [Required(ErrorMessage = "El campo DNI es requerido.")]
        [DisplayName("DNI")]
        public int Dni { get; set; }
        [Required(ErrorMessage = "El campo Fecha de Nacimiento es requerido.")]
        [DisplayName("Fecha de Nacimiento")]
        [DataType(DataType.Date)]
        public DateTime FechaNacimiento { get; set; }
        [Required(ErrorMessage = "El campo Desarrollador es requerido.")]
        [DisplayName("Desarrollador")]
        public string Desarrollador { get; set; }
        [Required(ErrorMessage = "El campo Descripcion es requerido.")]
        [DisplayName("Descripcion")]
        public string Descripcion { get; set; }
        [Required(ErrorMessage = "El campo Area es requerido.")]
        [DisplayName("Area")]
        public int IdArea { get; set; }

        public virtual Area IdAreaNavigation { get; set; }
    }
}
