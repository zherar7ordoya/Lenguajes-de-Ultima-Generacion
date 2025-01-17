﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Presentacion_UI
{
    public partial class Menu : Form
    {
        public Menu()
        {
            InitializeComponent();
        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void alumnosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frAlumno formulario = frAlumno.Instancia();
            formulario.MdiParent = this;
            formulario.Show();
            formulario.BringToFront();
        }

        private void localidadToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frLocalidad formulario = frLocalidad.Instancia();
            formulario.MdiParent = this;
            formulario.Show();
            formulario.BringToFront();
        }
    }
}
