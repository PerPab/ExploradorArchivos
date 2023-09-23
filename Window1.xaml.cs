using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace AbrirArchivos
{
    
    public partial class Window1 : Window
    {

        public Window1()
        {     
            InitializeComponent();

        }

        private void Button_Click(object sender, RoutedEventArgs e) // seleccionar directorio
        {
           
           string path = "Archivos";

           FolderBrowserDialog dialog = new FolderBrowserDialog();

           if (dialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
           {
              path = dialog.SelectedPath;  
              
           }

           directorioDestino.Text = path;

        }
        private void Window_Loaded(object sender, RoutedEventArgs e) //evento de ventana
        {
            string path = "Archivos";

            directorioDestino.Text = path;
              
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)  // boton guardar nota
        {
            string path = directorioDestino.Text.ToString();
            string nombreGenerico = Guid.NewGuid().ToString();
            string nombre = $"Archivo - {nombreGenerico}";
            string contenido = textoIngresado.Text;

            string extension;

           if (radioTxt.IsChecked == true)
            {
                extension = radioTxt.Content.ToString();
            }
            else
            {
                extension = radioPdf.Content.ToString();
            }

            if (nombre.Trim() == "")
            {
                nombre = nombreGenerico;
            }
            else
            {
                nombre = nombreArchivo.Text;
            }

            string parametro = $"{path}\\{nombre}{extension}";

            using (StreamWriter writer = new StreamWriter(parametro,true,System.Text.Encoding.Default))
            {
                writer.Write(contenido);
                writer.Flush();
            }

            textoIngresado.Text = "";
            nombreArchivo.Text = "";

            
            this.Close();    

        }
   
    }
}
