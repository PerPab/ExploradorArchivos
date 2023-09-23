using System;
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

namespace AbrirArchivos
{
    
    public partial class MainWindow : Window
    {
        

        
        public MainWindow()
        {
            InitializeComponent();

        }

        private void Button_Click(object sender, RoutedEventArgs e) // carga un directorio seleccionado y lista los archivos dentro.
        {
            string path = string.Empty;
            

            FolderBrowserDialog dialog = new FolderBrowserDialog();

            if(dialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                path = dialog.SelectedPath;
            }

            DirectoryInfo directoryInfo = new DirectoryInfo(path);

            listFiles.Items.Clear();
            foreach (var dir in directoryInfo.GetFiles())
            {
                listFiles.Items.Add(dir.Name);
            }

            viewPath.Text = "";
            viewPath.Text= path;

        }

        

        private void Window_Loaded(object sender, RoutedEventArgs e) // Carga un directorio por defecto al abrir el programa
        {
            string path = "Archivos";
            DirectoryInfo directoryInfo = new DirectoryInfo(path);

            listFiles.Items.Clear();
            foreach (var dir in directoryInfo.GetFiles())
            {
                listFiles.Items.Add(dir.Name);
            }

            viewPath.Text = "";
            viewPath.Text = path;

        }

        private void Button_Click_1(object sender, RoutedEventArgs e) // Abrir nueva ventana al agregar documento
        {
            Window1 nuevoArchivo = new Window1();

            nuevoArchivo.Show();
        }

        
    }
}
