﻿namespace GUI
{
    partial class RentaForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.ListadoDgv = new System.Windows.Forms.DataGridView();
            this.ClientesDgv = new System.Windows.Forms.DataGridView();
            this.VehiculosDgv = new System.Windows.Forms.DataGridView();
            this.DetallePanel = new System.Windows.Forms.TableLayoutPanel();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.CodigoClienteTextbox = new System.Windows.Forms.TextBox();
            this.FechaNacimientoDtp = new System.Windows.Forms.DateTimePicker();
            this.NombreControl = new GUI.NombreControl();
            this.ApellidoControl = new GUI.ApellidoControl();
            this.DniControl = new GUI.DniControl();
            this.EmailControl = new GUI.EmailControl();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.CodigoVehiculoTextbox = new System.Windows.Forms.TextBox();
            this.MarcaControl = new GUI.MarcaControl();
            this.ModeloControl = new GUI.ModeloControl();
            this.label11 = new System.Windows.Forms.Label();
            this.PatenteControl = new GUI.PatenteControl();
            this.TipoCombobox = new System.Windows.Forms.ComboBox();
            this.DiasRentadosNumeric = new System.Windows.Forms.NumericUpDown();
            this.CancelarButton = new System.Windows.Forms.Button();
            this.GuardarButton = new System.Windows.Forms.Button();
            this.tableLayoutPanel2 = new System.Windows.Forms.TableLayoutPanel();
            this.label13 = new System.Windows.Forms.Label();
            this.CodigoRentaTextbox = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.ImporteControl = new GUI.ImporteControl();
            this.CalcularButton = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.ListadoDgv)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ClientesDgv)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.VehiculosDgv)).BeginInit();
            this.DetallePanel.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DiasRentadosNumeric)).BeginInit();
            this.tableLayoutPanel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // ListadoDgv
            // 
            this.ListadoDgv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.ListadoDgv.Location = new System.Drawing.Point(467, 280);
            this.ListadoDgv.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.ListadoDgv.Name = "ListadoDgv";
            this.ListadoDgv.RowHeadersWidth = 51;
            this.ListadoDgv.Size = new System.Drawing.Size(501, 254);
            this.ListadoDgv.TabIndex = 0;
            // 
            // ClientesDgv
            // 
            this.ClientesDgv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.ClientesDgv.Location = new System.Drawing.Point(14, 15);
            this.ClientesDgv.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.ClientesDgv.Name = "ClientesDgv";
            this.ClientesDgv.RowHeadersWidth = 51;
            this.ClientesDgv.Size = new System.Drawing.Size(445, 256);
            this.ClientesDgv.TabIndex = 1;
            // 
            // VehiculosDgv
            // 
            this.VehiculosDgv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.VehiculosDgv.Location = new System.Drawing.Point(974, 15);
            this.VehiculosDgv.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.VehiculosDgv.Name = "VehiculosDgv";
            this.VehiculosDgv.RowHeadersWidth = 51;
            this.VehiculosDgv.Size = new System.Drawing.Size(304, 256);
            this.VehiculosDgv.TabIndex = 2;
            // 
            // DetallePanel
            // 
            this.DetallePanel.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.DetallePanel.ColumnCount = 2;
            this.DetallePanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.DetallePanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.DetallePanel.Controls.Add(this.label1, 0, 0);
            this.DetallePanel.Controls.Add(this.label2, 0, 1);
            this.DetallePanel.Controls.Add(this.label3, 0, 2);
            this.DetallePanel.Controls.Add(this.label4, 0, 3);
            this.DetallePanel.Controls.Add(this.label5, 0, 4);
            this.DetallePanel.Controls.Add(this.label6, 0, 5);
            this.DetallePanel.Controls.Add(this.CodigoClienteTextbox, 1, 0);
            this.DetallePanel.Controls.Add(this.FechaNacimientoDtp, 1, 4);
            this.DetallePanel.Controls.Add(this.NombreControl, 1, 1);
            this.DetallePanel.Controls.Add(this.ApellidoControl, 1, 2);
            this.DetallePanel.Controls.Add(this.DniControl, 1, 3);
            this.DetallePanel.Controls.Add(this.EmailControl, 1, 5);
            this.DetallePanel.Location = new System.Drawing.Point(15, 280);
            this.DetallePanel.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.DetallePanel.Name = "DetallePanel";
            this.DetallePanel.RowCount = 6;
            this.DetallePanel.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.DetallePanel.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.DetallePanel.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.DetallePanel.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.DetallePanel.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.DetallePanel.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.DetallePanel.Size = new System.Drawing.Size(444, 254);
            this.DetallePanel.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(4, 0);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 23);
            this.label1.TabIndex = 0;
            this.label1.Text = "Código";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(4, 40);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 23);
            this.label2.TabIndex = 1;
            this.label2.Text = "Nombre";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(4, 82);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(72, 23);
            this.label3.TabIndex = 2;
            this.label3.Text = "Apellido";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(4, 126);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(40, 23);
            this.label4.TabIndex = 3;
            this.label4.Text = "DNI";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(4, 167);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(167, 23);
            this.label5.TabIndex = 4;
            this.label5.Text = "Fecha de nacimiento";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(4, 207);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(57, 23);
            this.label6.TabIndex = 5;
            this.label6.Text = "E-mail";
            // 
            // CodigoClienteTextbox
            // 
            this.CodigoClienteTextbox.Enabled = false;
            this.CodigoClienteTextbox.Location = new System.Drawing.Point(179, 5);
            this.CodigoClienteTextbox.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.CodigoClienteTextbox.Name = "CodigoClienteTextbox";
            this.CodigoClienteTextbox.Size = new System.Drawing.Size(60, 30);
            this.CodigoClienteTextbox.TabIndex = 1;
            // 
            // FechaNacimientoDtp
            // 
            this.FechaNacimientoDtp.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.FechaNacimientoDtp.Location = new System.Drawing.Point(179, 172);
            this.FechaNacimientoDtp.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.FechaNacimientoDtp.Name = "FechaNacimientoDtp";
            this.FechaNacimientoDtp.Size = new System.Drawing.Size(120, 30);
            this.FechaNacimientoDtp.TabIndex = 5;
            // 
            // NombreControl
            // 
            this.NombreControl.Location = new System.Drawing.Point(177, 42);
            this.NombreControl.Margin = new System.Windows.Forms.Padding(2);
            this.NombreControl.Name = "NombreControl";
            this.NombreControl.Nombre = "";
            this.NombreControl.Size = new System.Drawing.Size(276, 38);
            this.NombreControl.TabIndex = 2;
            // 
            // ApellidoControl
            // 
            this.ApellidoControl.Apellido = "";
            this.ApellidoControl.Location = new System.Drawing.Point(177, 84);
            this.ApellidoControl.Margin = new System.Windows.Forms.Padding(2);
            this.ApellidoControl.Name = "ApellidoControl";
            this.ApellidoControl.Size = new System.Drawing.Size(276, 40);
            this.ApellidoControl.TabIndex = 3;
            // 
            // DniControl
            // 
            this.DniControl.Dni = "";
            this.DniControl.Location = new System.Drawing.Point(177, 128);
            this.DniControl.Margin = new System.Windows.Forms.Padding(2);
            this.DniControl.Name = "DniControl";
            this.DniControl.Size = new System.Drawing.Size(156, 37);
            this.DniControl.TabIndex = 4;
            // 
            // EmailControl
            // 
            this.EmailControl.Email = "";
            this.EmailControl.Location = new System.Drawing.Point(177, 209);
            this.EmailControl.Margin = new System.Windows.Forms.Padding(2);
            this.EmailControl.Name = "EmailControl";
            this.EmailControl.Size = new System.Drawing.Size(276, 37);
            this.EmailControl.TabIndex = 6;
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 2;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel1.Controls.Add(this.label7, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.label8, 0, 2);
            this.tableLayoutPanel1.Controls.Add(this.label9, 0, 3);
            this.tableLayoutPanel1.Controls.Add(this.label10, 0, 4);
            this.tableLayoutPanel1.Controls.Add(this.CodigoVehiculoTextbox, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.MarcaControl, 1, 2);
            this.tableLayoutPanel1.Controls.Add(this.ModeloControl, 1, 3);
            this.tableLayoutPanel1.Controls.Add(this.label11, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.PatenteControl, 1, 4);
            this.tableLayoutPanel1.Controls.Add(this.TipoCombobox, 1, 1);
            this.tableLayoutPanel1.Location = new System.Drawing.Point(974, 280);
            this.tableLayoutPanel1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 5;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 20F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 20F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 20F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 20F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 20F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(304, 254);
            this.tableLayoutPanel1.TabIndex = 6;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(3, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(63, 23);
            this.label7.TabIndex = 0;
            this.label7.Text = "Código";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(3, 100);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(59, 23);
            this.label8.TabIndex = 2;
            this.label8.Text = "Marca";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(3, 150);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(69, 23);
            this.label9.TabIndex = 3;
            this.label9.Text = "Modelo";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(3, 200);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(69, 23);
            this.label10.TabIndex = 4;
            this.label10.Text = "Patente";
            // 
            // CodigoVehiculoTextbox
            // 
            this.CodigoVehiculoTextbox.Enabled = false;
            this.CodigoVehiculoTextbox.Location = new System.Drawing.Point(78, 4);
            this.CodigoVehiculoTextbox.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.CodigoVehiculoTextbox.Name = "CodigoVehiculoTextbox";
            this.CodigoVehiculoTextbox.Size = new System.Drawing.Size(60, 30);
            this.CodigoVehiculoTextbox.TabIndex = 6;
            // 
            // MarcaControl
            // 
            this.MarcaControl.Location = new System.Drawing.Point(79, 105);
            this.MarcaControl.Marca = "";
            this.MarcaControl.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.MarcaControl.Name = "MarcaControl";
            this.MarcaControl.Size = new System.Drawing.Size(219, 37);
            this.MarcaControl.TabIndex = 7;
            // 
            // ModeloControl
            // 
            this.ModeloControl.Location = new System.Drawing.Point(79, 155);
            this.ModeloControl.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.ModeloControl.Modelo = "";
            this.ModeloControl.Name = "ModeloControl";
            this.ModeloControl.Size = new System.Drawing.Size(219, 37);
            this.ModeloControl.TabIndex = 8;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(3, 50);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(43, 23);
            this.label11.TabIndex = 1;
            this.label11.Text = "Tipo";
            // 
            // PatenteControl
            // 
            this.PatenteControl.Location = new System.Drawing.Point(79, 205);
            this.PatenteControl.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.PatenteControl.Name = "PatenteControl";
            this.PatenteControl.Patente = "";
            this.PatenteControl.Size = new System.Drawing.Size(185, 38);
            this.PatenteControl.TabIndex = 9;
            // 
            // TipoCombobox
            // 
            this.TipoCombobox.FormattingEnabled = true;
            this.TipoCombobox.Location = new System.Drawing.Point(78, 54);
            this.TipoCombobox.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.TipoCombobox.Name = "TipoCombobox";
            this.TipoCombobox.Size = new System.Drawing.Size(186, 30);
            this.TipoCombobox.TabIndex = 5;
            // 
            // DiasRentadosNumeric
            // 
            this.DiasRentadosNumeric.Location = new System.Drawing.Point(165, 48);
            this.DiasRentadosNumeric.Name = "DiasRentadosNumeric";
            this.DiasRentadosNumeric.Size = new System.Drawing.Size(60, 30);
            this.DiasRentadosNumeric.TabIndex = 7;
            // 
            // CancelarButton
            // 
            this.CancelarButton.Location = new System.Drawing.Point(602, 205);
            this.CancelarButton.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.CancelarButton.Name = "CancelarButton";
            this.CancelarButton.Size = new System.Drawing.Size(120, 35);
            this.CancelarButton.TabIndex = 14;
            this.CancelarButton.Text = "Cancelar";
            this.CancelarButton.UseVisualStyleBackColor = true;
            this.CancelarButton.Visible = false;
            // 
            // GuardarButton
            // 
            this.GuardarButton.Location = new System.Drawing.Point(728, 205);
            this.GuardarButton.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.GuardarButton.Name = "GuardarButton";
            this.GuardarButton.Size = new System.Drawing.Size(120, 35);
            this.GuardarButton.TabIndex = 13;
            this.GuardarButton.Text = "Alta";
            this.GuardarButton.UseVisualStyleBackColor = true;
            // 
            // tableLayoutPanel2
            // 
            this.tableLayoutPanel2.ColumnCount = 2;
            this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel2.Controls.Add(this.CalcularButton, 1, 2);
            this.tableLayoutPanel2.Controls.Add(this.label13, 0, 1);
            this.tableLayoutPanel2.Controls.Add(this.CodigoRentaTextbox, 1, 0);
            this.tableLayoutPanel2.Controls.Add(this.DiasRentadosNumeric, 1, 1);
            this.tableLayoutPanel2.Controls.Add(this.label12, 0, 0);
            this.tableLayoutPanel2.Controls.Add(this.label14, 0, 3);
            this.tableLayoutPanel2.Controls.Add(this.ImporteControl, 1, 3);
            this.tableLayoutPanel2.Location = new System.Drawing.Point(563, 15);
            this.tableLayoutPanel2.Name = "tableLayoutPanel2";
            this.tableLayoutPanel2.RowCount = 4;
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 25F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 25F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 25F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 25F));
            this.tableLayoutPanel2.Size = new System.Drawing.Size(325, 183);
            this.tableLayoutPanel2.TabIndex = 15;
            // 
            // label13
            // 
            this.label13.Location = new System.Drawing.Point(3, 45);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(120, 30);
            this.label13.TabIndex = 18;
            this.label13.Text = "Días rentados";
            this.label13.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // CodigoRentaTextbox
            // 
            this.CodigoRentaTextbox.Location = new System.Drawing.Point(165, 3);
            this.CodigoRentaTextbox.Name = "CodigoRentaTextbox";
            this.CodigoRentaTextbox.Size = new System.Drawing.Size(60, 30);
            this.CodigoRentaTextbox.TabIndex = 16;
            // 
            // label12
            // 
            this.label12.Location = new System.Drawing.Point(3, 0);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(120, 30);
            this.label12.TabIndex = 17;
            this.label12.Text = "Código";
            this.label12.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label14
            // 
            this.label14.Location = new System.Drawing.Point(3, 135);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(120, 30);
            this.label14.TabIndex = 19;
            this.label14.Text = "Importe";
            this.label14.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // ImporteControl
            // 
            this.ImporteControl.Font = new System.Drawing.Font("Calibri", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ImporteControl.Importe = "";
            this.ImporteControl.Location = new System.Drawing.Point(166, 141);
            this.ImporteControl.Margin = new System.Windows.Forms.Padding(4, 6, 4, 6);
            this.ImporteControl.Name = "ImporteControl";
            this.ImporteControl.Size = new System.Drawing.Size(149, 33);
            this.ImporteControl.TabIndex = 20;
            // 
            // CalcularButton
            // 
            this.CalcularButton.Location = new System.Drawing.Point(165, 94);
            this.CalcularButton.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.CalcularButton.Name = "CalcularButton";
            this.CalcularButton.Size = new System.Drawing.Size(120, 35);
            this.CalcularButton.TabIndex = 16;
            this.CalcularButton.Text = "Calcular";
            this.CalcularButton.UseVisualStyleBackColor = true;
            this.CalcularButton.Visible = false;
            // 
            // RentaForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 22F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1292, 550);
            this.Controls.Add(this.tableLayoutPanel2);
            this.Controls.Add(this.CancelarButton);
            this.Controls.Add(this.GuardarButton);
            this.Controls.Add(this.tableLayoutPanel1);
            this.Controls.Add(this.DetallePanel);
            this.Controls.Add(this.VehiculosDgv);
            this.Controls.Add(this.ClientesDgv);
            this.Controls.Add(this.ListadoDgv);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "RentaForm";
            this.Text = "RentaForm";
            this.Load += new System.EventHandler(this.RentaForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ListadoDgv)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ClientesDgv)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.VehiculosDgv)).EndInit();
            this.DetallePanel.ResumeLayout(false);
            this.DetallePanel.PerformLayout();
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DiasRentadosNumeric)).EndInit();
            this.tableLayoutPanel2.ResumeLayout(false);
            this.tableLayoutPanel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView ListadoDgv;
        private System.Windows.Forms.DataGridView ClientesDgv;
        private System.Windows.Forms.DataGridView VehiculosDgv;
        private System.Windows.Forms.TableLayoutPanel DetallePanel;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        public System.Windows.Forms.TextBox CodigoClienteTextbox;
        public System.Windows.Forms.DateTimePicker FechaNacimientoDtp;
        public NombreControl NombreControl;
        public ApellidoControl ApellidoControl;
        public DniControl DniControl;
        public EmailControl EmailControl;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        public System.Windows.Forms.TextBox CodigoVehiculoTextbox;
        public MarcaControl MarcaControl;
        public ModeloControl ModeloControl;
        private System.Windows.Forms.Label label11;
        public PatenteControl PatenteControl;
        public System.Windows.Forms.ComboBox TipoCombobox;
        private System.Windows.Forms.NumericUpDown DiasRentadosNumeric;
        private System.Windows.Forms.Button CancelarButton;
        private System.Windows.Forms.Button GuardarButton;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel2;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox CodigoRentaTextbox;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label14;
        private ImporteControl ImporteControl;
        private System.Windows.Forms.Button CalcularButton;
    }
}