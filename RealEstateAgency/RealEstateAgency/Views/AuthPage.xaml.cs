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
    /// Interaction logic for AuthPage.xaml
    /// </summary>
    public partial class AuthPage : Page
    {
        public AuthPage()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            var user = Employee.Login(txtLogin.Text, txtPassword.Text);
            if (user == null)
            {
                MessageBox.Show("Такого пользователя не существует");
                return;
            }
            Manager.currentUser = user;
            Manager.Frame.Navigate(new MainPage());
        }

        private void imgQuest_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            MessageBox.Show("Поля для ввода логина и пароля", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
        }
    }
}
