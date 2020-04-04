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
                    string baseproyecto = "Server=DESKTOP-6QL5L42\\SQLEXPRESS; Database=Pet_Store; persist security info = True; Integrated Security = SSPI;";
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

        }           
 }

