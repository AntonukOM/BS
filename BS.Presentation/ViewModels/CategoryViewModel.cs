using BS.Business.Managers.Abstract;
using BS.Entities;
using BS.Presentation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BS.Presentation.ViewModels
{
    public class CategoryViewModel
    {
        private readonly ICategoryManager _categoryManager;
        List<CategoryModel> _items = null;
        public CategoryViewModel(ICategoryManager categoryManager)
        {
            _categoryManager = categoryManager;
        }

        static public List<CategoryModel> CreateCategoryModel(IEnumerable<Category> categories)
        {
            List<CategoryModel> listCategory = new List<CategoryModel>();
            var res = from ctx in categories
                      where ctx.ParentId == null
                      select new
                      {
                          Id = ctx.Id,
                          Name = ctx.Name
                      };
            foreach (var c in res)
            {
                listCategory.Add(
                    new CategoryModel(c.Id, c.Name));
            }
            return listCategory;
        }

        public IEnumerable<CategoryModel> Category
        {
            get
            {
                if (_items == null)
                {
                    _items = new List<CategoryModel>();
                    _items = CreateCategoryModel(
                            _categoryManager.GetAll()
                        );
                }
                return _items;
            }
        }

        public List<string> Categories
        {
            get
            {
                List<string> list = new List<string>();
                foreach (var i in _items)
                {
                    list.Add(i.ToString());
                }               
                return list;
            }
        }
    }
}

