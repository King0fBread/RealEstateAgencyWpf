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
    /// Interaction logic for DeveloperEditPage.xaml
    /// </summary>
    public partial class DeveloperEditPage : Page
    {
        private Developer _selectedDeveloper = new Developer();
        public DeveloperEditPage(Developer selectedDeveloper)
        {
            InitializeComponent();
            _selectedDeveloper = selectedDeveloper;
            developerDataCanvas.DataContext = _selectedDeveloper;
        }

        private void backButton_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new Developers());
            Manager.mainFrame.RemoveBackEntry();
        }

        private void redactSubmitButton_Click(object sender, RoutedEventArgs e)
        {
            if(CheckGameInfoValidity(developerName.Text, developerDescription.Text))
            {
                Model.GetContext().SaveChanges();

                MessageBox.Show("Успешно изменено!");
                Manager.mainFrame.Navigate(new Developers());
                Manager.mainFrame.RemoveBackEntry();
            }
        }
        private bool CheckGameInfoValidity(string developerNameInput, string developerDescription)
        {
            if (developerNameInput.Length < 5)
            {
                MessageBox.Show("Слишком короткое название!");
                return false;
            }
            if (developerDescription.Length < 10)
            {
                MessageBox.Show("Слишком короткое описание!");
                return false;
            }

            return true;
        }
    }
}
