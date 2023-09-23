﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Forms;
using System.IO;
using System.Reflection;
using System.Security.Cryptography.X509Certificates;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Text.RegularExpressions;
using static System.Net.Mime.MediaTypeNames;

namespace AbrirArchivos
{
    
    public partial class MainWindow : Window
    {

        public string ruta = "Archivos";
        
        public MainWindow()
        {
            InitializeComponent();
            
        }

        public void Refrescar(string ruta)
        {
            if(ruta.Trim()!="Archivos")
            {
                ruta = viewPath.Text;

            }

            Listar(ruta);

        }

        public void Listar(string ruta)
        {
            
            if(viewPath.Text == "")
            {
                ruta = "Archivos";
            }

            DirectoryInfo directoryInfo = new DirectoryInfo(ruta);
            listFiles.Items.Clear();
            foreach (var dir in directoryInfo.GetFiles())
            {
                listFiles.Items.Add($"{dir.Name} <{dir.CreationTime}>");

            }
        }

        private void Button_Click(object sender, RoutedEventArgs e) // carga un directorio seleccionado y lista los archivos dentro.
        {
            string ruta = string.Empty;
            
            FolderBrowserDialog dialog = new FolderBrowserDialog();

            if(dialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                ruta = dialog.SelectedPath;
            }

            Listar(ruta);
            viewPath.Text = "";
            viewPath.Text= ruta;

        }
       private void Window_Loaded(object sender, RoutedEventArgs e) // Carga un directorio por defecto al abrir el programa
        {
            if (viewPath.Text == "")
            {
                ruta = "Archivos";
            }

            Listar(ruta);
            viewPath.Text = "";
            viewPath.Text = ruta;

        }

        private void Button_Click_1(object sender, RoutedEventArgs e) // Abrir nueva ventana al agregar documento
        {
            Window1 nuevoArchivo = new Window1();
            
            nuevoArchivo.Show();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)  //Eliminar archivos
        {
            string nombre = listFiles.SelectedItem.ToString();           
            string nombreregex = Regex.Replace(nombre, @"\<.*?\>", "");
            string path = viewPath.Text;
            string parametro = $"{path}\\{nombreregex}";
            var result = System.Windows.MessageBox.Show($"Esta seguro que desea eliminar el archivo {nombreregex}", "Cuidado", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (result == MessageBoxResult.Yes)
            {
            File.Delete(parametro);

                ruta = viewPath.Text;

                Refrescar(ruta);

            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)  // boton actualizar
        {
            ruta = viewPath.Text;
            Refrescar(ruta);
        }

        private void Window_Activated(object sender, EventArgs e) // Evento ventana
        {
            ruta = viewPath.Text;
            Refrescar(ruta);
        }

        private void Button_Click_4(object sender, RoutedEventArgs e) // Abrir archivos
        {
            string nombre = listFiles.SelectedItem.ToString();
            string nombreregex = Regex.Replace(nombre, @"\<.*?\>", "");
            string path = viewPath.Text;
            string parametro = $"{path}\\{nombreregex}"; 
            Process.Start(parametro);
        }
    }
}
