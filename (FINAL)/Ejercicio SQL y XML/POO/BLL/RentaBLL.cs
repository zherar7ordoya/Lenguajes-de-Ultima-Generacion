﻿using BEL;
using System;
using System.Collections.Generic;
using System.Linq;


namespace BLL
{
    /// <summary>
    /// Estas consultas son parte de la lógica de negocio de la aplicación.
    /// Los métodos devuelven diccionarios pues es la estructura de datos que 
    /// mejor resume la información que se quiere mostrar en el dashboard (que
    /// resume la misma información de manera visual a través de los charts).
    /// </summary>
    public partial class RentaBLL
    {
        // NOTA: Es inneceario validar la cantidad de días rentados pues ya está
        //       validado por el control numérico en la interfaz de usuario.

        private bool ValidarImporte(decimal importe)
        {
            if (importe <= 0) throw new Exception("El importe debe ser mayor a cero");
            return true;
        }

        //*------------------------------------------------------------------*\\

        public Dictionary<string, int> VehiculosMasRentadosPorTipo()
        {
            List<Renta> rentados = Consultar();

            return rentados
                .GroupBy(x => x.Vehiculo.Tipo.ToString())
                .OrderByDescending(grupo => grupo.Count())
                .Take(2)
                .ToDictionary(grupo => grupo.Key, grupo => grupo.Count());
        }


        /**
         * Este fue mañoso... Al ir ingresando datos se vio la situación de que 
         * el diccionario no soporta valores duplicados. Pero es que un vehículo
         * puede ser rentado más de una vez...
         * Este código utiliza un bucle para recorrer las rentas y construir el
         * diccionario sumando los importes para los vehículos que ya están en
         * el diccionario y agregando nuevos vehículos con sus importes si aún
         * no están presentes. Luego, ordena y toma los tres primeros vehículos
         * con mayores ingresos.
         */
        public Dictionary<string, decimal> VehiculosMasRentadosPorImporte()
        {
            try
            {
                List<Renta> rentados = Consultar();

                var ingresos = new Dictionary<string, decimal>();

                foreach (var renta in rentados)
                {
                    string vehiculoKey = renta.Vehiculo.ToString();

                    // Vehículo existe
                    if (ingresos.ContainsKey(vehiculoKey)) ingresos[vehiculoKey] += renta.Importe;

                    // Vehículo no existe
                    else ingresos.Add(vehiculoKey, renta.Importe);
                }

                var resultado = ingresos
                    .OrderByDescending(item => item.Value)
                    .Take(3)
                    .ToDictionary(item => item.Key, item => item.Value);

                return resultado;
            }
            catch (Exception)
            {
                throw new Exception("Error al consultar los vehículos más rentados por importe");
            }
        }


        public Dictionary<string, int> VehiculosMenosRentadosPorTipo()
        {
            List<Renta> rentados = Consultar();

            return rentados
                .GroupBy(x => x.Vehiculo.Tipo.ToString())
                .OrderBy(grupo => grupo.Count())
                .Take(2)
                .ToDictionary(grupo => grupo.Key, grupo => grupo.Count());
        }


        /**
         * Este fue mañoso... Al ir ingresando datos se vio la situación de que 
         * el diccionario no soporta valores duplicados. Pero es que un vehículo
         * puede ser rentado más de una vez...
         * Este código utiliza un bucle para recorrer las rentas y construir el
         * diccionario sumando los importes para los vehículos que ya están en
         * el diccionario y agregando nuevos vehículos con sus importes si aún
         * no están presentes. Luego, ordena y toma los tres primeros vehículos
         * con menores ingresos.
         */
        public Dictionary<string, decimal> VehiculosMenosRentadosPorImporte()
        {
            try
            {
                List<Renta> rentados = Consultar();

                var ingresos = new Dictionary<string, decimal>();

                foreach (var renta in rentados)
                {
                    string vehiculoKey = renta.Vehiculo.ToString();

                    // Vehículo existe
                    if (ingresos.ContainsKey(vehiculoKey)) ingresos[vehiculoKey] += renta.Importe;

                    // Vehículo no existe
                    else ingresos.Add(vehiculoKey, renta.Importe);
                }

                var resultado = ingresos
                    .OrderBy(item => item.Value)
                    .Take(3)
                    .ToDictionary(item => item.Key, item => item.Value);

                return resultado;
            }
            catch (Exception)
            {
                throw new Exception("Error al consultar los vehículos menos rentados por importe");
            }
        }


        public Dictionary<string, decimal> TotalRecaudadoPorTipo()
        {
            List<Renta> rentados = Consultar();

            return rentados
                .GroupBy(x => x.Vehiculo.Tipo.ToString())
                .ToDictionary(grupo => grupo.Key, grupo => grupo.Sum(x => x.Importe));
        }

        //\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\\
    }
}
