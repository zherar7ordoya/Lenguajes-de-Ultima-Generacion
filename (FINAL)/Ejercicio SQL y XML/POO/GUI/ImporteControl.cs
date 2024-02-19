﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GUI
{
    public partial class ImporteControl : UserControl
    {
        public string Importe
        {
            get { return ImporteTextbox.Text; }
            set { ImporteTextbox.Text = value; }
        }


        public ImporteControl()
        {
            InitializeComponent();
            ImporteTextbox.Validating += Validar;
            ImporteTextbox.TextChanged += (s, e) => OnTextChanged(EventArgs.Empty);
        }

        private void Validar(object sender, EventArgs e)
        {
            Validar();
        }

        public bool Validar()
        {
            // ^\d+: Comienza con uno o más dígitos.
            // (\.\d{ 1,2})?: Opcionalmente, puede haber un punto seguido por uno o dos dígitos.
            string regex = @"^\d+(\.\d{1,2})?$";
            bool valido = Regex.IsMatch(ImporteTextbox.Text, regex);

            if (valido) ImporteError.SetError(ImporteTextbox, null);
            else
            {
                ImporteError.SetError(
                    ImporteTextbox,
                    "Formato esperado: Número entero o decimal con dos decimales");
            }
            return valido;
        }
    }
}
