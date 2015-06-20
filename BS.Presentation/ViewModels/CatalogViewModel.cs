using BS.Business.Managers.Abstract;
using BS.Presentation.Models;
using BS.Entities;
using System.Collections.Generic;
using System.Linq;

namespace BS.Presentation.ViewModels
{
    public class CatalogViewModel
    {
        private readonly ICategoryManager   _categoryManager;
        private readonly IMeasureManager    _measureManager;
        private readonly IPackageManager    _packageManager;
        private readonly IPriceManager      _priceManager;
        private readonly IProducerManager   _producerManager;
        private readonly IProductManager    _productManager;
        List<CatalogModel> _items = null;
        public CatalogViewModel(
             ICategoryManager   categoryManager,
             IMeasureManager    measureManager,
             IPackageManager    packageManager,
             IPriceManager      priceManager,
             IProducerManager   producerManager, 
             IProductManager    productManager
            )
        {
            _categoryManager = categoryManager;
            _measureManager = measureManager;
            _packageManager = packageManager;
            _priceManager = priceManager;
            _producerManager = producerManager;
            _productManager = productManager;
        }
        static public List<CatalogModel> CreateCatalogModel(
                 IEnumerable<Category> categories,
                 IEnumerable<Measure> measures,
                 IEnumerable<Package> packages,
                 IEnumerable<Price> prices,
                 IEnumerable<Producer> producers, 
                 IEnumerable<Product> products
            )
        {
            List<CatalogModel> listCm = new List<CatalogModel>();

            var res =
                from pg in packages
                join p in products
                    on pg.ProductId equals p.Id
                join c in categories
                    on p.CategoryId equals c.Id
                join cc in categories
                    on c.ParentId equals cc.Id
                join prd in producers
                    on p.ProducerId equals prd.Id
                join m in measures
                    on pg.MeasureId equals m.Id
                join vm in measures
                    on pg.VolumeMeasureId equals vm.Id
                join pr in prices
                    on pg.Id equals pr.PackageId
                select new
                {
                    Id = pg.Id,
                    Name = p.Name,
                    Producer = prd.Name,
                    Category = cc.Name,
                    SubCategory = c.Name,
                    Volume = pg.Volume,
                    Measure = m.ShortName,
                    VolMeasure = vm.ShortName,
                    Price = pr.UnitCost
                };
            foreach (var c in res)
            {
                listCm.Add(
                        new CatalogModel(c.Id, c.Name, c.Producer, c.Category, c.SubCategory, c.Volume, c.Price, c.Measure, c.VolMeasure)
                    );
            }
            return listCm;
        }
        public IEnumerable<CatalogModel> Catalog
        {
            get
            {
                if (_items == null)
                {
                    _items = new List<CatalogModel>();
                    _items = CreateCatalogModel(
                         _categoryManager.GetAll(),
                         _measureManager.GetAll(),
                         _packageManager.GetAll(),
                         _priceManager.GetAll(),
                         _producerManager.GetAll(),
                         _productManager.GetAll()
                        );
                }
                return _items;
            }
        }
        
        static public List<CatalogModel> CreateCatalogModelFilterByCategory(
                     IEnumerable<Category> categories,
                     IEnumerable<Measure> measures,
                     IEnumerable<Package> packages,
                     IEnumerable<Price> prices,
                     IEnumerable<Producer> producers,
                     IEnumerable<Product> products,
                     string categoryName
                )
        {
            List<CatalogModel> listCm = new List<CatalogModel>();

            var res =
                from pg in packages
                join p in products
                    on pg.ProductId equals p.Id
                join c in categories
                    on p.CategoryId equals c.Id
                join cc in categories
                    on c.ParentId equals cc.Id
                    where cc.Name == categoryName
                join prd in producers
                    on p.ProducerId equals prd.Id
                join m in measures
                    on pg.MeasureId equals m.Id
                join vm in measures
                    on pg.VolumeMeasureId equals vm.Id
                join pr in prices
                    on pg.Id equals pr.PackageId
                select new
                {
                    Id = pg.Id,
                    Name = p.Name,
                    Producer = prd.Name,
                    Category = cc.Name,
                    SubCategory = c.Name,
                    Volume = pg.Volume,
                    Measure = m.ShortName,
                    VolMeasure = vm.ShortName,
                    Price = pr.UnitCost
                };
            foreach (var c in res)
            {
                listCm.Add(
                        new CatalogModel(c.Id, c.Name, c.Producer, c.Category, c.SubCategory, c.Volume, c.Price, c.Measure, c.VolMeasure)
                    );
            }
            return listCm;
        }

        public IEnumerable<CatalogModel> CatalogFilterByCategory(string name)
        {
            if (_items == null)
            {
                _items = new List<CatalogModel>();
                _items = CreateCatalogModelFilterByCategory(
                     _categoryManager.GetAll(),
                     _measureManager.GetAll(),
                     _packageManager.GetAll(),
                     _priceManager.GetAll(),
                     _producerManager.GetAll(),
                     _productManager.GetAll(),
                     name
                    );
            }
            return _items;          
        }

        public List<string> Categories
        {
            get
            {
                List<string> tmp = new List<string>();
                bool addFlag = false;          
                for (int i = 0; i < _items.Count; i++)
                {
                    addFlag = true;
                    foreach (string categoryName in tmp)
                    {
                        if (_items[i].Category == categoryName)
                        {
                            addFlag = false;
                            break;
                        }
                    }
                    if (addFlag)
                    {
                        tmp.Add(_items[i].Category);
                    }
                }
                tmp.Add("Всі категорії");
                return tmp;
            }
        }
    }
}