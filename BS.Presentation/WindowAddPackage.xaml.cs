using BS.Business.Managers.Abstract;
using BS.Business.Managers.Concrete;
using BS.Presentation.ViewModels;
using System.Configuration;
using System.Windows;
using System.Windows.Controls;
using System.Linq;
using System;
using System.Threading;
using System.Collections.Generic;

namespace BS.Presentation
{
    /// <summary>
    /// Interaction logic for WindowAddPackage.xaml
    /// </summary>
    public partial class WindowAddPackage : Window
    {
        private List<object> obj = new List<object>();
        private string cs = ConfigurationManager.ConnectionStrings["ShopDBEntities"].ConnectionString;   
        public WindowAddPackage()
        {
            InitializeComponent();            
            obj.Add(cbxCategory);
            obj.Add(cbxSubCategoty);
            obj.Add(cbxProducer);
            obj.Add(tbxProduct);          
            obj.Add(cbxMeasure);
            //obj.Add(tbxVolume);
            //obj.Add(tbxPrice);
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

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            InitializeAddForm();           
        }

        private void InitializeAddForm()
        {
            try
            {
                ICategoryManager categoryManager = new CategoryManager(cs);
                CategoryViewModel categoryViewModel = new CategoryViewModel(categoryManager);

                IProducerManager producerManager = new ProducerManager(cs);
                ProducerViewModel producerViewModel = new ProducerViewModel(producerManager);

                IMeasureManager measureManager = new MeasureManager(cs);
                MeasureViewModel measureViewModel = new MeasureViewModel(measureManager);                
                MeasureViewModel volumeMeasureViewModel = new MeasureViewModel(measureManager);

                cbxCategory.DataContext = categoryViewModel.Category;
                cbxCategory.ItemsSource = categoryViewModel.Categories;
                cbxCategory.SelectedItem = categoryViewModel.Categories.FirstOrDefault();

                cbxSubCategoty.DataContext = categoryViewModel.Subcategory(cbxCategory.SelectedItem.ToString());
                cbxSubCategoty.ItemsSource = categoryViewModel.Subcategories;
                cbxSubCategoty.SelectedItem = categoryViewModel.Subcategories.FirstOrDefault();

                cbxProducer.DataContext = producerViewModel.Producer;
                cbxProducer.ItemsSource = producerViewModel.Producers;
                cbxProducer.SelectedItem = producerViewModel.Producers.FirstOrDefault();

                cbxMeasure.DataContext = measureViewModel.Measure;
                cbxMeasure.ItemsSource = measureViewModel.Measures;
                cbxMeasure.SelectedItem = measureViewModel.Measures.First();

                cbxVolumeMeasure.DataContext = volumeMeasureViewModel.VolumeMeasure;
                cbxVolumeMeasure.ItemsSource = volumeMeasureViewModel.Measures;
                cbxVolumeMeasure.SelectedItem = volumeMeasureViewModel.Measures.First();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        
        private void btnAddPackage_Click(object sender, RoutedEventArgs e)
        {
            /*
            int prodId, measure, volMeasure, vol, pacId, price;
            string addDate, cmdStr;

            if (tbxProduct.Text != "" && tbxPrice.Text != "" && tbxProduct.Text != "")
            {
                foreach (var item in obj)
                {
                    if ((item as ComboBox).Text == "")
                    {
                        MessageBox.Show("not fill all field!");
                        return;
                    }
                }


                try
                {
                    throw new Exception("WTF exception");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            else
            {
                MessageBox.Show("not fill all field!");
            }
         */
        }
    }
}
