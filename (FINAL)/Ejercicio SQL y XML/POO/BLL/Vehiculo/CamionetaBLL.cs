﻿using BEL;

namespace BLL
{
    public class CamionetaBLL : VehiculoBLL<Camioneta>
    {
        public override decimal CalcularRenta(Camioneta camioneta, int cantidadDias)
        {
            decimal costoPorTipo = 300;  // Costo base
            decimal costoPorModelo = 0;

            switch (camioneta.Modelo)
            {
                case "Silverado":
                    costoPorModelo = 150;
                    break;
                case "F-150":
                    costoPorModelo = 75;
                    break;
            }

            return (costoPorTipo + costoPorModelo) * cantidadDias;
        }
    }
}
