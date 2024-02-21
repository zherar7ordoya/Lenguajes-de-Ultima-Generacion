﻿using System;
using System.Text.RegularExpressions;
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
            string regex = @"^\d+([\.,]\d{1,2})?$";
            bool valido = Regex.IsMatch(ImporteTextbox.Text, regex);

            if (valido)
            {
                decimal valor;

                if (decimal.TryParse(ImporteTextbox.Text, out valor))
                {
                    if (valor > 0)
                    {
                        ImporteError.SetError(ImporteTextbox, null);
                        return true;
                    }
                    else
                    {
                        ImporteError.SetError(ImporteTextbox, "El valor debe ser mayor a cero.");
                        return false;
                    }
                }
                else
                {
                    ImporteError.SetError(ImporteTextbox, "Formato numérico no válido.");
                    return false;
                }
            }
            else
            {
                ImporteError.SetError(
                    ImporteTextbox,
                    "Formato esperado: Número entero o decimal con dos decimales");
                return false;
            }
        }
    }
}
