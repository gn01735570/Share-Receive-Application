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
using Microsoft.Web.WebView2.Core;

namespace WpfApp1
{
    /// <summary>
    /// webview2.xaml 的互動邏輯
    /// </summary>
    public partial class Webview2 : Window
    {
        public Webview2()
        {
            InitializeComponent();
        }



        private void ButtonGo_Click(object sender, RoutedEventArgs e)
        {
            if (webView != null && webView.CoreWebView2 != null)
            {
                try
                {
                    webView.CoreWebView2.Navigate(addressBar.Text);
                }
                catch (Exception)
                {

                    webView.CoreWebView2.ExecuteScriptAsync($"alert('It is not safe, try an https link')");

                }
            }
        }
    }
}
