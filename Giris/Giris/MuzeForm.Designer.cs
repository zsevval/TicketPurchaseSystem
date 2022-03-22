﻿
namespace Giris
{
    partial class MuzeForm
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
            this.components = new System.ComponentModel.Container();
            this.platformProjectDataSet = new Giris.PlatformProjectDataSet();
            this.platformProjectDataSetBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.fKMuseumInfoMuseumBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.museumBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.platformProjectDataSet1 = new Giris.PlatformProjectDataSet1();
            this.museumBindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.museumTableAdapter = new Giris.PlatformProjectDataSet1TableAdapters.MuseumTableAdapter();
            this.museumBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.museumInfoTableAdapter = new Giris.PlatformProjectDataSet1TableAdapters.MuseumInfoTableAdapter();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.textBox5 = new System.Windows.Forms.TextBox();
            this.textBox6 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox7 = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.platformProjectDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.platformProjectDataSetBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.fKMuseumInfoMuseumBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.museumBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.platformProjectDataSet1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.museumBindingSource2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.museumBindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // platformProjectDataSet
            // 
            this.platformProjectDataSet.DataSetName = "PlatformProjectDataSet";
            this.platformProjectDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // platformProjectDataSetBindingSource
            // 
            this.platformProjectDataSetBindingSource.DataSource = this.platformProjectDataSet;
            this.platformProjectDataSetBindingSource.Position = 0;
            // 
            // fKMuseumInfoMuseumBindingSource
            // 
            this.fKMuseumInfoMuseumBindingSource.DataMember = "FK_MuseumInfo_Museum";
            this.fKMuseumInfoMuseumBindingSource.DataSource = this.museumBindingSource;
            // 
            // museumBindingSource
            // 
            this.museumBindingSource.DataMember = "Museum";
            this.museumBindingSource.DataSource = this.platformProjectDataSet1;
            // 
            // platformProjectDataSet1
            // 
            this.platformProjectDataSet1.DataSetName = "PlatformProjectDataSet1";
            this.platformProjectDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // museumBindingSource2
            // 
            this.museumBindingSource2.DataMember = "Museum";
            this.museumBindingSource2.DataSource = this.platformProjectDataSet1;
            // 
            // museumTableAdapter
            // 
            this.museumTableAdapter.ClearBeforeFill = true;
            // 
            // museumBindingSource1
            // 
            this.museumBindingSource1.DataMember = "Museum";
            this.museumBindingSource1.DataSource = this.platformProjectDataSet1;
            // 
            // museumInfoTableAdapter
            // 
            this.museumInfoTableAdapter.ClearBeforeFill = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnF2;
            this.dataGridView1.Location = new System.Drawing.Point(12, 125);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(902, 327);
            this.dataGridView1.TabIndex = 0;
            this.dataGridView1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellClick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 19.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.Location = new System.Drawing.Point(538, 53);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(181, 38);
            this.label1.TabIndex = 1;
            this.label1.Text = "MÜZELER";
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.button1.Location = new System.Drawing.Point(947, 520);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(243, 42);
            this.button1.TabIndex = 2;
            this.button1.Text = "SATIN AL";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // textBox1
            // 
            this.textBox1.Enabled = false;
            this.textBox1.Location = new System.Drawing.Point(1007, 175);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(153, 22);
            this.textBox1.TabIndex = 3;
            // 
            // textBox2
            // 
            this.textBox2.Enabled = false;
            this.textBox2.Location = new System.Drawing.Point(1007, 217);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(153, 22);
            this.textBox2.TabIndex = 4;
            // 
            // textBox3
            // 
            this.textBox3.Enabled = false;
            this.textBox3.Location = new System.Drawing.Point(1007, 263);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(153, 22);
            this.textBox3.TabIndex = 5;
            // 
            // textBox4
            // 
            this.textBox4.Enabled = false;
            this.textBox4.Location = new System.Drawing.Point(1007, 314);
            this.textBox4.Name = "textBox4";
            this.textBox4.Size = new System.Drawing.Size(153, 22);
            this.textBox4.TabIndex = 6;
            // 
            // textBox5
            // 
            this.textBox5.Enabled = false;
            this.textBox5.Location = new System.Drawing.Point(1007, 361);
            this.textBox5.Name = "textBox5";
            this.textBox5.Size = new System.Drawing.Size(153, 22);
            this.textBox5.TabIndex = 7;
            // 
            // textBox6
            // 
            this.textBox6.Enabled = false;
            this.textBox6.Location = new System.Drawing.Point(1007, 409);
            this.textBox6.Name = "textBox6";
            this.textBox6.Size = new System.Drawing.Size(153, 22);
            this.textBox6.TabIndex = 8;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.Location = new System.Drawing.Point(618, 477);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(154, 18);
            this.label2.TabIndex = 9;
            this.label2.Text = "Kupon Kodu Giriniz";
            // 
            // textBox7
            // 
            this.textBox7.Location = new System.Drawing.Point(798, 476);
            this.textBox7.Name = "textBox7";
            this.textBox7.Size = new System.Drawing.Size(116, 22);
            this.textBox7.TabIndex = 10;
            // 
            // MuzeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1232, 594);
            this.Controls.Add(this.textBox7);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.textBox6);
            this.Controls.Add(this.textBox5);
            this.Controls.Add(this.textBox4);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dataGridView1);
            this.Name = "MuzeForm";
            this.Text = "MuzeForm";
            this.Load += new System.EventHandler(this.MuzeForm_Load_1);
            ((System.ComponentModel.ISupportInitialize)(this.platformProjectDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.platformProjectDataSetBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.fKMuseumInfoMuseumBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.museumBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.platformProjectDataSet1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.museumBindingSource2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.museumBindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.BindingSource platformProjectDataSetBindingSource;
        private PlatformProjectDataSet platformProjectDataSet;
        private PlatformProjectDataSet1 platformProjectDataSet1;
        private System.Windows.Forms.BindingSource museumBindingSource;
        private PlatformProjectDataSet1TableAdapters.MuseumTableAdapter museumTableAdapter;
        private System.Windows.Forms.BindingSource museumBindingSource1;
        private System.Windows.Forms.BindingSource fKMuseumInfoMuseumBindingSource;
        private PlatformProjectDataSet1TableAdapters.MuseumInfoTableAdapter museumInfoTableAdapter;
        private System.Windows.Forms.BindingSource museumBindingSource2;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.TextBox textBox4;
        private System.Windows.Forms.TextBox textBox5;
        private System.Windows.Forms.TextBox textBox6;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox7;
    }
}