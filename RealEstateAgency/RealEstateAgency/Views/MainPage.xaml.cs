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
            Manager.internalAppFrame = InternalAppFrame;
            Manager.internalAppFrame.JournalOwnership = JournalOwnership.OwnsJournal;
            Manager.internalAppFrame.NavigationUIVisibility = NavigationUIVisibility.Hidden;
            Manager.internalAppFrame.Navigate(new Developers());
        }

        private void ClientsButton_Click(object sender, RoutedEventArgs e)
        {
            Manager.internalAppFrame.Navigate(new Clients());
        }

        private void RequestsButton_Click(object sender, RoutedEventArgs e)
        {
            Manager.internalAppFrame.Navigate(new Requests());
        }

        private void FlatsButton_Click(object sender, RoutedEventArgs e)
        {
            Manager.internalAppFrame.Navigate(new Flats());
        }

        private void SkyScrapersButton_Click(object sender, RoutedEventArgs e)
        {
            Manager.internalAppFrame.Navigate(new SkyScrapers());
        }

        private void DevelopersButton_Click(object sender, RoutedEventArgs e)
        {
            Manager.internalAppFrame.Navigate(new Developers());
        }

        private void DiagramsButton_Click(object sender, RoutedEventArgs e)
        {
            Manager.internalAppFrame.Navigate(new Diagrams());
        }

        private void LogOutButton_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new AuthPage());
            Manager.mainFrame.RemoveBackEntry();
        }

        private void QuitApplicationButton_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

    }
}
