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
using RealEstateAgency.Models;

namespace RealEstateAgency.Views
{
    /// <summary>
    /// Interaction logic for Developers.xaml
    /// </summary>
    public partial class Developers : Page
    {
        public Developers()
        {
            InitializeComponent();
            developersDG.ItemsSource = Developers.GetAll();
        }

        private void EditDeveloper_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            var selectedDeveloper = button.DataContext as Developer;
            Manager.mainFrame.Navigate(new DeveloperEditPage(selectedDeveloper));
        }
        public static List<Developer> GetAll()
        {
            try
            {
                return Model.GetContext().Developers.ToList();
            }
            catch (Exception)
            {
                return null;
            }

        }
    }
}
