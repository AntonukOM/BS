using BS.Business.Managers.Abstract;
using BS.Business.Managers.Concrete;
using BS.Entities;
using BS.Presentation.ViewModels;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Windows;
using System.Windows.Controls;
using System.Linq;
using System.Data.SqlClient;

namespace BS.Presentation.Views
{
    /// <summary>
    /// Interaction logic for WindowAddPackage.xaml
    /// </summary>
    public partial class WindowAddPackage : Window
    {
        private string cs = ConfigurationManager.ConnectionStrings["ShopDBEntities"].ConnectionString;   
        public WindowAddPackage()
        {
            InitializeComponent();
        }

        private void cbxCategory_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {               
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnAddPackage_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ShopDBEntities"].ConnectionString;
            ICategoryManager categoryManager = new CategoryManager(cs);
        
            CategoryViewModel categoryViewModel =
                   new CategoryViewModel(
                        categoryManager);
            cbxCategory.DataContext = categoryViewModel.Category;
            cbxCategory.ItemsSource = categoryViewModel.Categories;

        }
    }
}
