using System;
using System.Collections.Generic;
using System.Text;

namespace PetCRWEB.ETL
{
    public class Mascota
    {
        public int idMascota { get; set; }
        public string nombre { get; set; }
        public string raza { get; set; }
        public int edad { get; set; }
        public int idCliente { get; set; }
    }
}
