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

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            CheckIfuUserExists(txtLogin.Text, txtPassword.Text);
            Manager.mainFrame.Navigate(new MainPage());
        }
        public static bool CheckIfuUserExists(string userName, string userPassword)
        {
            var user = Employee.Login(userName, userPassword);
            if(user != null)
            {
                Manager.currentUser = user;
                return true;
            }

            MessageBox.Show("Такого пользователя не существует");
            return false;
        }

        private void ClickableTipImage_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            MessageBox.Show("Поля для ввода логина и пароля", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
        }
    }
}
