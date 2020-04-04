using PetCRWEB.DAL;
using PetCRWEB.ETL;
using System;
using System.Collections.Generic;
using System.Text;

namespace PetCRWEB.BLL
{
   public class Logica
    {
        #region Cliente
        public void InsertarCliente(Cliente cliente, int action)
        {

            Datos datos = new Datos();
            datos.MantenimientoCliente(cliente, action);


        }

        public void ActualizarCliente(Cliente cliente, int action)
        {

            Datos datos = new Datos();
            datos.MantenimientoCliente(cliente, action);


        }

        public void EliminarEstudiante(Cliente cliente, int action)
        {

            Datos datos = new Datos();
            datos.MantenimientoCliente(cliente, action);


        }

        public List<Cliente> ConsultarCliente(Cliente cliente)
        {
            Datos datos = new Datos();
            return datos.ConsultarCliente(cliente);
        }

        #endregion

        #region Empleado

        public void InsertarEmpleado(Empleado empleado, int action)
        {

            Datos datos = new Datos();
            datos.MantenimientoEmpleado(empleado, action);


        }

        public void ActualizarEmpleado(Empleado empleado, int action)
        {

            Datos datos = new Datos();
            datos.MantenimientoEmpleado(empleado, action);


        }

        public void EliminarEmpleado(Empleado empleado, int action)
        {

            Datos datos = new Datos();
            datos.MantenimientoEmpleado(empleado, action);


        }

        public List<Empleado> ConsultarEmpleado(Empleado empleado)
        {
            Datos datos = new Datos();
            return datos.ConsultarEmpleado(empleado);
        }
        #endregion
    }
}