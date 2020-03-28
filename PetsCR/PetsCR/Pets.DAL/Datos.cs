using System;
using System.Collections.Generic;
using System.Text;

namespace Pets.DAL
{
   public class Datos
    {
        public Database ObtenerConexion()
        {
            string baseexamen = "Server=localhost; Database=EXAMEN; persist security info = True; Integrated Security = SSPI;";
            return new Microsoft.Practices.EnterpriseLibrary.Data.Sql.SqlDatabase(baseexamen);
        }
    }
}
