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
        private List<CategoryModel> _items = null;
        private List<CategoryModel> _subItems = null;

        public CategoryViewModel(ICategoryManager categoryManager)
        {
            _categoryManager = categoryManager;
        }

        static public List<CategoryModel> CreateCategoryModel(IEnumerable<Category> categories)
        {
            List<CategoryModel> listCategory = new List<CategoryModel>();
            var res = from ctx in categories
                      where ctx.ParentId == null
                      orderby ctx.Name ascending
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


        //subctg

        private static int GetId(IEnumerable<Category> subcategories, string mainCtgName)
        {
            var i = from c in subcategories where c.Name == mainCtgName select c.Id;
            int[] a = i.ToArray();
            return a[0];            
        }

        static public List<CategoryModel> CreateSubcategoryModel(IEnumerable<Category> subcategories, string mainCtgName)
        {            
            List<CategoryModel> listCategory = new List<CategoryModel>();
            int id = GetId(subcategories, mainCtgName);            

            var res = from ctx in subcategories
                      where ctx.ParentId == id/*(int)(from c in subcategories
                                                            where c.Name == mainCtgName
                                                            select c.Id)*/
                      orderby ctx.Name ascending
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

        public IEnumerable<CategoryModel> Subcategory(string filter)
        {            
                if (_subItems == null)
                {
                    _subItems = new List<CategoryModel>();
                    _subItems = CreateSubcategoryModel(
                            _categoryManager.GetAll(),
                            filter
                            );
                }
                return _subItems;            
        }

        public List<string> Subcategories
        {
            get
            {
                List<string> list = new List<string>();
                foreach (var i in _subItems)
                {
                    list.Add(i.ToString());
                }
                return list;
            }
        }

    }
}

