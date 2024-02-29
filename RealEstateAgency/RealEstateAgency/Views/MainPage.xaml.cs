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

namespace RealEstateAgency.Views
{
    /// <summary>
    /// Interaction logic for MainPage.xaml
    /// </summary>
    public partial class MainPage : Page
    {
        public MainPage()
        {
            InitializeComponent();
            Manager.InternalAppFrame = InternalAppFrame;
            Manager.InternalAppFrame.JournalOwnership = JournalOwnership.OwnsJournal;
            Manager.InternalAppFrame.NavigationUIVisibility = NavigationUIVisibility.Hidden;
            Manager.InternalAppFrame.Navigate(new Developers());
        }

        private void clientsBTN_Click(object sender, RoutedEventArgs e)
        {
            Manager.InternalAppFrame.Navigate(new Clients());
        }

        private void requestBTN_Click(object sender, RoutedEventArgs e)
        {
            Manager.InternalAppFrame.Navigate(new Requests());
        }

        private void flatBTN_Click(object sender, RoutedEventArgs e)
        {
            Manager.InternalAppFrame.Navigate(new Flats());
        }

        private void skyScrBTN_Click(object sender, RoutedEventArgs e)
        {
            Manager.InternalAppFrame.Navigate(new SkyScrapers());
        }

        private void devBTN_Click(object sender, RoutedEventArgs e)
        {
            Manager.InternalAppFrame.Navigate(new Developers());
        }

        private void diagBTN_Click(object sender, RoutedEventArgs e)
        {
            Manager.InternalAppFrame.Navigate(new Diagrams());
        }

        private void changeAccount_Click(object sender, RoutedEventArgs e)
        {
            Manager.Frame.Navigate(new AuthPage());
            Manager.Frame.RemoveBackEntry();
        }

        private void logout_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

    }
}
