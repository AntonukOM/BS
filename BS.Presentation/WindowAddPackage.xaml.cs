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

namespace BS.Presentation
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
            ICategoryManager categoryManager = new CategoryManager(cs);
            CategoryViewModel categoryViewModel = new CategoryViewModel(categoryManager);           

            cbxSubCategoty.DataContext = categoryViewModel.Subcategory(cbxCategory.SelectedItem.ToString());
            cbxSubCategoty.ItemsSource = categoryViewModel.Subcategories;
            cbxSubCategoty.SelectedItem = categoryViewModel.Subcategories.FirstOrDefault();
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
            ICategoryManager categoryManager = new CategoryManager(cs);        
            CategoryViewModel categoryViewModel = new CategoryViewModel(categoryManager);

            cbxCategory.DataContext = categoryViewModel.Category;
            cbxCategory.ItemsSource = categoryViewModel.Categories;
            cbxCategory.SelectedItem = categoryViewModel.Categories.FirstOrDefault();

            cbxSubCategoty.DataContext = categoryViewModel.Subcategory(cbxCategory.SelectedItem.ToString());
            cbxSubCategoty.ItemsSource = categoryViewModel.Subcategories;
            cbxSubCategoty.SelectedItem = categoryViewModel.Subcategories.FirstOrDefault();
        }
    }
}
