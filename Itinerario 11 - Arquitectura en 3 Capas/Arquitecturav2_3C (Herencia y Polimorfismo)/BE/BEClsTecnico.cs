﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BEClsTecnico
    {

        public string Nombre { get; set; }

        public string Apellido { get; set; }

        public int DNI { get; set; }

        #region "cosntructores"
        //constructor vacio
        public BEClsTecnico() { }

        //constructor sobrecargado
        public BEClsTecnico(string _Nom, String _Ape, int _DNI)
        {
            Nombre = _Nom;
            Apellido = _Ape;
            DNI = _DNI;

        }

        #endregion

        public override string ToString()
        {
            return this.Nombre + " " + this.Apellido + " " + this.DNI + " ";
        }

    }
}
