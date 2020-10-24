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
using System.Xml.Linq;
using System.Drawing;
using System.IO;

namespace Application2
{
    /// <summary>
    /// ImageShow.xaml 的互動邏輯
    /// </summary>
    public partial class ImageShow : Window
    {
        private String folder_path = "C:\\Users\\user2\\Files\\Image";


        public ImageShow()
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

        private void btnRefreshImage_Click(object sender, RoutedEventArgs e)
        {
            get_Images(folder_path);
        }
        private void get_Images(String folder_path)
        {
            if (folder_path == "")
            {
                MessageBox.Show("You havn't  select the folder!");
            }

            try
            {
                DirectoryInfo folder = new DirectoryInfo(folder_path);
                if (folder.Exists)
                {
                    foreach (FileInfo fileInfo in folder.GetFiles())
                    {
                        if (".jpg|.jpeg|.png".Contains(fileInfo.Extension.ToLower()))
                        {
                            String sDate = fileInfo.LastWriteTime.ToString("yyyy-MM-dd");
                            add_Image(fileInfo.FullName);

                        }

                    }

                }
            }
            catch (Exception)
            {

            }
        }

        private void add_Image(String Image_with_Path)
        {
            System.Windows.Controls.Image newImage = new System.Windows.Controls.Image();

            BitmapImage src = new BitmapImage();
            src.BeginInit();
            src.UriSource = new Uri(Image_with_Path, UriKind.Absolute);
            src.EndInit();
            newImage.Source = src;
            newImage.Height = 100;
            newImage.Stretch = Stretch.Uniform;
            Display.Source = src;

        }

        private void github_click(object sender, RoutedEventArgs e)
        {
            link li = new link();
            li.Show();
        }

        private void user_click(object sender, RoutedEventArgs e)
        {
            MainWindow mw = new MainWindow();
            mw.Show();
            this.Close();
        }

        private void image_click(object sender, RoutedEventArgs e)
        {
            ImageShow image = new ImageShow();
            image.Show();
            this.Close();
        }
    }
}
