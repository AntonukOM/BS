namespace BS.Presentation.Models
{
    public class CatalogModel
    {
        #region Data Properties
        public int Id { set; get; }
        public string Name { set; get; }
        public string Producer { set; get; }
        public string Category { set; get; }
        public string SubCategory { set; get; }
        public decimal Volume { set; get; }
        public decimal Price { set; get; }
        public string Measure { set; get; }
        public string VolMeasure { set; get; }

        #endregion
        public CatalogModel(
                 int        id          ,
                 string     name        ,
                 string     producer    ,
                 string     category    ,
                 string     subCategory ,
                 decimal    volume      ,
                 decimal    price       ,
                 string     measure     , 
                 string     volMeasure
            )
        {
            Id = id;
            Name = name;
            Producer = producer;
            Category = category;
            SubCategory = subCategory;
            Volume = volume;
            Price = price;
            Measure = measure;
            VolMeasure = volMeasure;
        }
    }
}