using System;
using System.IO;
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
using System.Xml.Linq;
using System.Drawing;



namespace Application2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {        
        private static string fullPath = "C:\\Users\\user2\\Files\\link.xml";

        StringBuilder userList;

        public MainWindow()
        {
            InitializeComponent();
            userList = new StringBuilder();

            lblUsers.Content = string.Empty;
            lblUsers.Content = LoadUsers();
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

        private StringBuilder LoadUsers()
        {
            userList.AppendLine("                                     ");
            userList.AppendLine("                                     ");
            userList.AppendLine("                ID        |    Users    |         E-mail       ");
            userList.AppendLine("------------------------------------------------------------------");

            if (File.Exists(fullPath))
            {
                XElement xelement = XElement.Load(fullPath);
                IEnumerable<XElement> users = xelement.Elements();

                
                foreach (var user in users)
                {
                    //userList.AppendLine("                                "+ count +".   "+user.Attribute("Name").Value);
                    userList.AppendLine("              " + user.Attribute("ID").Value + "      " + user.Attribute("Name").Value + "      " + user.Attribute("url").Value);
                    userList.AppendLine("------------------------------------------------------------------");

                }
            }
            else
            {
                userList.AppendLine("Nothing to show ...");
            }
            return userList;
        }

        private void btnRefreshUsers_Click(object sender, RoutedEventArgs e)
        {
            userList.Clear();
            lblUsers.Content = string.Empty;
            lblUsers.Content = LoadUsers();
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
