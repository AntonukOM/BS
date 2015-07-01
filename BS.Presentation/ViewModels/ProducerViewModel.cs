using BS.Business.Managers.Abstract;
using BS.Entities;
using BS.Presentation.Models;
using System.Collections.Generic;
using System.Linq;

namespace BS.Presentation.ViewModels
{
    public class ProducerViewModel
    {
        private readonly IProducerManager _producerManager;
        private List<ProducerModel> _items = null;

        public ProducerViewModel(IProducerManager manager)
        {
            _producerManager = manager;
        }

        static private List<ProducerModel> CreateProducerModel(IEnumerable<Producer> producers)
        {
            List<ProducerModel> listProducers = new List<ProducerModel>();
            var res = from p in producers
                      orderby p.Name ascending
                      select new
                      {
                          Id = p.Id,
                          Name = p.Name
                      };
            foreach (var p in producers)
            {
                listProducers.Add(new ProducerModel(p.Id, p.Name));                
            }
            return listProducers;
        }

        public IEnumerable<ProducerModel> Producer
        {
            get
            {
                if (_items == null)
                {
                    _items = new List<ProducerModel>();
                    _items = CreateProducerModel(
                            _producerManager.GetAll()
                        );
                }
                return _items;
            }
        }

        public List<string> Producers
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
