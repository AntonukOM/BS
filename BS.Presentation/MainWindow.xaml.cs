using BS.Business.Managers.Abstract;
using BS.Business.Managers.Concrete;
using BS.Presentation.ViewModels;
using System;
using System.Configuration;
using System.Windows;
using System.Windows.Controls;
using System.Linq;

namespace BS.Presentation
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();            
        }
        
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {            
            string cs = ConfigurationManager.ConnectionStrings["ShopDBEntities"].ConnectionString;
            try            
            {
                ICategoryManager categoryManager = new CategoryManager(cs);
                IMeasureManager measureManager = new MeasureManager(cs);
                IPackageManager packageManager = new PackageManager(cs);
                IPriceManager priceManager = new PriceManager(cs);
                IProducerManager producerManager = new ProducerManager(cs);
                IProductManager productManager = new ProductManager(cs);

                CatalogViewModel catalogViewModel =
                    new CatalogViewModel(
                         categoryManager,
                         measureManager,
                         packageManager,
                         priceManager,
                         producerManager, 
                         productManager
                        );
                
                vwCatalog.dgCatalogUC.DataContext = catalogViewModel.Catalog;
                comboBox.ItemsSource = catalogViewModel.Categories;
                comboBox.SelectedItem = catalogViewModel.Categories.FirstOrDefault(x => x == "Всі категорії");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
          
        }         

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ShopDBEntities"].ConnectionString;
            try
            {                
                ICategoryManager categoryManager = new CategoryManager(cs);
                IMeasureManager measureManager = new MeasureManager(cs);
                IPackageManager packageManager = new PackageManager(cs);
                IPriceManager priceManager = new PriceManager(cs);
                IProducerManager producerManager = new ProducerManager(cs);
                IProductManager productManager = new ProductManager(cs);

                CatalogViewModel catalogViewModel =
                    new CatalogViewModel(
                         categoryManager,
                         measureManager,
                         packageManager,
                         priceManager,
                         producerManager, 
                         productManager
                        );
                if (comboBox.SelectedIndex != comboBox.Items.Count - 1)
                {
                    vwCatalog.dgCatalogUC.DataContext = catalogViewModel.CatalogFilterByCategory(comboBox.SelectedItem.ToString());
                }                    
                else
                {
                    vwCatalog.dgCatalogUC.DataContext = catalogViewModel.Catalog;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnAddGood_Click(object sender, RoutedEventArgs e)
        {
            Views.WindowAddPackage wnd = new Views.WindowAddPackage();
            wnd.Top = this.Top + 40;
            wnd.Left = this.Left + 40;
            wnd.ShowDialog();
        }
    }
}