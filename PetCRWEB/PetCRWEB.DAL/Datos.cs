using Microsoft.Practices.EnterpriseLibrary.Data;
using PetCRWEB.ETL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace PetCRWEB.DAL
{
        public class Datos
        {
            public Database ObtenerConexion
            {
                get
                {
                    string baseproyecto = "Server=LAPTOP-C302HPQA; Database=Pet_Store; persist security info = True; Integrated Security = SSPI;";
                    return new Microsoft.Practices.EnterpriseLibrary.Data.Sql.SqlDatabase(baseproyecto);
                }
            }

            public List<Cliente> ConsultarCliente(Cliente cliente)
            {
                try
                {
                    var _BD = ObtenerConexion;
                    var _Comando = _BD.GetStoredProcCommand("ConsultarCliente", cliente.idCliente);
                    List<Cliente> clientes = new List<Cliente>();
                    using (IDataReader info = _BD.ExecuteReader(_Comando))
                    {
                        while (info.Read())
                        {
                            clientes.Add(new Cliente
                            {
                                nombre = info["nombre"].ToString(),
                                primerApellido = info["apellido1"].ToString(),
                                segundoApellido = info["apellido2"].ToString(),
                                correo = info["correo"].ToString(),
                                telefono = int.Parse(info["telefono"].ToString()),
                                domicilio = info["domicilio"].ToString()

                            });
                        }
                    }

                    return clientes;

                }
                catch (Exception ex)
                {
                    return null;

                }

            }

            public void MantenimientoCliente(Cliente cliente, int action)
            {

                var _BD = ObtenerConexion;
                var _Comando = _BD.GetStoredProcCommand("MantenimientoCliente", action,
                    cliente.idCliente, cliente.nombre, cliente.primerApellido, cliente.segundoApellido, cliente.correo, cliente.telefono, cliente.domicilio);
                _BD.ExecuteNonQuery(_Comando);
            }

        
            public List<Empleado> ConsultarEmpleado(Empleado empleado)
            {
                try
                {
                    var _BD = ObtenerConexion;
                    var _Comando = _BD.GetStoredProcCommand("ConsultarEmpleado", empleado.idEmpleado);
                    List<Empleado> empleados = new List<Empleado>();
                    using (IDataReader info = _BD.ExecuteReader(_Comando))
                    {
                        while (info.Read())
                        {
                            empleados.Add(new Empleado
                            {
                                nombre = info["nombre"].ToString(),
                                primerApellido = info["apellido1"].ToString(),
                                segundoApellido = info["apellido2"].ToString(),
                                salario = double.Parse(info["salario"].ToString())
                             

                            });
                        }
                    }

                    return empleados;

                }
                catch (Exception ex)
                {
                    return null;

                }

            }

                public void MantenimientoEmpleado(Empleado empleado, int action)
                {

                    var _BD = ObtenerConexion;
                    var _Comando = _BD.GetStoredProcCommand("MantenimientoEmpleado", action,
                        empleado.idEmpleado, empleado.nombre, empleado.primerApellido, empleado.segundoApellido, empleado.salario);
                    _BD.ExecuteNonQuery(_Comando);
                }



        public List<Mascota> ConsultarMascota(Mascota mascota)
        {
            try
            {
                var _BD = ObtenerConexion;
                var _Comando = _BD.GetStoredProcCommand("ConsultemeEstePerrote", mascota.idMascota);
                List<Mascota> masco = new List<Mascota>();
                using (IDataReader info = _BD.ExecuteReader(_Comando))
                {
                    while (info.Read())
                    {
                        masco.Add(new Mascota
                        {
                            nombre = info["nombre"].ToString(),
                            raza = info["raza"].ToString(),
                            edad = int.Parse(info["edad"].ToString())


                        });
                    }
                }
            

                return masco;

            }
            catch (Exception ex)
            {
                return null;

            }

        }

        public void MantenimientoMascota(Mascota mascota, int action)
        {

            var _BD = ObtenerConexion;
            var _Comando = _BD.GetStoredProcCommand("MantenimientoAnimal", action,
                mascota.idMascota, mascota.nombre, mascota.raza, mascota.idCliente);
            _BD.ExecuteNonQuery(_Comando);
        }
    }           
 }

