using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Text;

namespace Pets.DAL
{
   public class Datos
    {
        public Database ObtenerConexion()
        {
            string baseproyecto = "Server=localhost; Database=PetBD; persist security info = True; Integrated Security = SSPI;";
            return new Microsoft.Practices.EnterpriseLibrary.Data.Sql.SqlDatabase(baseproyecto);
        }
    }
}
