using System.Windows;
using System.Windows.Input;
using System.IO;
using System.Xml;
using System.Xml.Linq;

namespace WpfApp1
{
    /// <summary>
    /// user.xaml 的互動邏輯
    /// </summary>
    public partial class user : Window
    {
       

        private static string fullPath_link = "C:\\Users\\user2\\Files\\link.xml";

        public user()
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

        private void Button_Click_All(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtLink.Text) && !string.IsNullOrWhiteSpace(txtUserName.Text) && !string.IsNullOrWhiteSpace(txtID.Text))
            {
                
                XElement xEle = XElement.Load(fullPath_link);


                xEle.Add(new XElement("User", new XAttribute("ID", txtID.Text.Trim()), new XAttribute("Name", txtUserName.Text.Trim()), new XAttribute("url", txtLink.Text.Trim())));
               
                xEle.Save(fullPath_link);
                txtID.Text = "";
                txtUserName.Text = "";
                txtLink.Text = "";
            }
            else
            {
                MessageBox.Show(this, "Each item must fill in. ", "Required", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            
        }
    }
}
