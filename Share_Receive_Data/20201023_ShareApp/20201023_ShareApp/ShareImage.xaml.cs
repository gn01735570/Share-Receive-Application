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
using System.Windows.Shapes;
using System.Drawing;
using Microsoft.Win32;
using MaterialDesignThemes.Wpf;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for ShareImage.xaml
    /// </summary>
    public partial class ShareImage : Window
    {

        private static string fullPath_image = "C:\\Users\\user2\\Files";

        public ShareImage()
        {
            InitializeComponent();
        }

        private void ButtonPopUpLogout_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void ButtonOpenMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonOpenMenu.Visibility = Visibility.Collapsed;
            ButtonCloseMenu.Visibility = Visibility.Visible;
        }

        private void ButtonCloseMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonOpenMenu.Visibility = Visibility.Visible;
            ButtonCloseMenu.Visibility = Visibility.Collapsed;
        }

        private void GridTitle_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        OpenFileDialog dialog = new OpenFileDialog();

        private void Button_Click_Select(object sender, RoutedEventArgs e)
        {

            try
            {
                dialog.Filter = "JPG files(*.jpg)|*.jpg|PNG files(*.png)|*.png|All Files(*.*)|*.*";

                if (dialog.ShowDialog() == true)
                {

                    Image1.Source = new BitmapImage(new Uri(dialog.FileName));


                }
            }
            catch (Exception)
            {
                MessageBox.Show("An Error Occured", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        public static String GetTimestamp(DateTime value)
        {
            return value.ToString("yyyyMMddHHmmssffff");
        }


        private void Button_Click_Send(object sender, RoutedEventArgs e)
        {

            String timeStamp = GetTimestamp(DateTime.Now);

            try
            {
                System.IO.File.Copy(dialog.FileName, fullPath_image + "\\Image\\ImageOut_" + timeStamp + ".jpg");

                MessageBox.Show("File sent completely!");
            } catch (Exception)
            {
                MessageBox.Show("You have to select the folder.");
            }
            

        }
        private void UserPage(object sender, RoutedEventArgs e)
        {

            user user_window = new user();   
            user_window.Show();   
            this.Close();  
        }

        private void Home_Click(object sender, RoutedEventArgs e)
        {

            MainWindow main = new MainWindow();
            main.Show();
            this.Close();
        }



        private void ImagePage_click(object sender, RoutedEventArgs e)
        {
            ShareImage imagePage = new ShareImage();
            imagePage.Show();
            this.Close();
        }

        private void WebPage_click(object sender, RoutedEventArgs e)
        {
            Webview2 wb2 = new Webview2();
            wb2.Show();
        }


    }
}
