﻿using ABS;

using BEL;

using MPP;

using System;
using System.Collections.Generic;
using System.Linq;

namespace ASL
{
    public partial class RentaASL : IABMC<Renta>
    {
        public bool Agregar(Renta objeto)
        {
            try
            {
                string consulta = "RentaAgregar";
                List<Renta> rentas = new RentaMPP().MapearDesdeSql("RentasConsultar");
                int codigo = rentas.Max(c => c.Codigo) + 1;
                objeto.Codigo = codigo;
                return new RentaMPP().MapearHaciaSql(consulta, objeto);
            }
            catch (InvalidOperationException ex) { throw new Exception(ex.Message); }
            catch (Exception ex) { throw new Exception(ex.Message); }
        }

        public bool Borrar(Renta objeto)
        {
            try
            {
                // Si mando el objeto completo, al stored procedure no le gusta: demasiados parámetros
                Renta renta = new Renta
                {
                    Codigo = objeto.Codigo
                };
                string consulta = "RentaBorrar";
                return new RentaMPP().MapearHaciaSql(consulta, renta);
            }
            catch (InvalidOperationException ex) { throw new Exception(ex.Message); }
            catch (Exception ex) { throw new Exception(ex.Message); }
        }

        public bool Modificar(Renta objeto)
        {
            try
            {
                string consulta = "RentaModificar";
                return new RentaMPP().MapearHaciaSql(consulta, objeto);
            }
            catch (InvalidOperationException ex) { throw new Exception(ex.Message); }
            catch (Exception ex) { throw new Exception(ex.Message); }
        }

        public List<Renta> Consultar()
        {
            try
            {
                string consulta = "RentasConsultar";
                return new RentaMPP().MapearDesdeSql(consulta);
            }
            catch (InvalidOperationException ex) { throw new Exception(ex.Message); }
            catch (Exception ex) { throw new Exception(ex.Message); }
        }

        //||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    }
}
