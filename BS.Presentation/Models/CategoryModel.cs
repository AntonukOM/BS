namespace BS.Presentation.Models
{
    public class CategoryModel
    {
        public int Id { get; set; }
        public string Category { get; set; }
        public CategoryModel(int id, string category)
        {
            Id = id;
            Category = category;
        }
        public override string ToString()
        {
            return Category;
        }
    }
}
