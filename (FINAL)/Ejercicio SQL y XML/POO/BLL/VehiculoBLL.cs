﻿using BEL;

/* ************************************************************************** *\
La "Business Logic Layer" (BLL) es una capa fundamental en la arquitectura de
software que se encarga de gestionar la lógica de negocio de una aplicación. Su
función principal es coordinar y ejecutar las operaciones que van más allá de la
manipulación básica de datos, asegurando que estas operaciones cumplan con las
reglas y requisitos específicos del dominio de la aplicación en un sistema mixto
de datos distribuidos.
\* ************************************************************************** */

namespace BLL
{
    // El método SinAsignar (que es parte de la lógica de negocio) fue movido a
    // la clase estática Tool puesto que esta clase, por ser abstracta, no puede
    // tener métodos no abstractos.
    public abstract partial class VehiculoBLL<T> where T : Vehiculo
    {
        public abstract decimal CalcularRenta(T vehiculo, int cantidadDias);
    }
}
