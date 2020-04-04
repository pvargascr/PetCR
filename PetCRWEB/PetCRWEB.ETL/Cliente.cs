using System;
using System.Collections.Generic;
using System.Text;

namespace PetCRWEB.ETL
{
    public class Cliente
    {
        public int idCliente { get; set; }
        public string nombre { get; set; }
        public string primerApellido { get; set; }
        public string segundoApellido { get; set; }
        public string correo { get; set; }
        public int telefono { get; set; }
        public string domicilio { get; set; }
    }
}
