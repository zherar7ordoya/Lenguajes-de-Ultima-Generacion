﻿using BEL;

namespace BLL
{
    public abstract partial class VehiculoBLL
    {
        public virtual decimal CalcularRenta(Vehiculo vehiculo, int cantidadDias)
        {
            decimal costoPorTipo = 100;  // Costo base
            decimal costoPorModelo = 0;

            switch (vehiculo.Modelo)
            {
                case "Fiesta":
                    costoPorModelo = 50;
                    break;
                case "Cruze":
                    costoPorModelo = 25;
                    break;
            }
            return (costoPorTipo + costoPorModelo) * cantidadDias;
        }
    }
}
