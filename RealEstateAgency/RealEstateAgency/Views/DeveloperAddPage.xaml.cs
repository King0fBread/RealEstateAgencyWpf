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
    /// Interaction logic for DeveloperAddPage.xaml
    /// </summary>
    public partial class DeveloperAddPage : Page
    {
        public DeveloperAddPage()
        {
            InitializeComponent();
        }

        private void AddSubmitButton_Click(object sender, RoutedEventArgs e)
        {
            RealEstateAgencyEntities db = Model.GetContext();
            Developer developer = new Developer(developerName.Text, developerDescription.Text);
            db.Developers.Add(developer);
            db.SaveChanges();
            Manager.mainFrame.Navigate(new Developers());
            Manager.mainFrame.RemoveBackEntry();
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new Developers());
            Manager.mainFrame.RemoveBackEntry();
        }
    }
}
