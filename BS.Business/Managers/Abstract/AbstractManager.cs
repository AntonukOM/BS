using System.Data.Entity;

namespace BS.Business.Managers.Abstract
{
    public class AbstractManager
    {
        private readonly string _connectionString;

        public AbstractManager(string cs)
        {
            _connectionString = cs;
        }
        protected DbContext CreateDbContext()
        {
            return new DbContext(_connectionString);
        }
    }
}