using BS.Business.Managers.Abstract;
using BS.Entities;
using BS.Presentation.Models;
using System.Collections.Generic;
using System.Linq;

namespace BS.Presentation.ViewModels
{
    public class MeasureViewModel
    {
        private readonly IMeasureManager _measureManager;
        private List<MeasureModel> _items = null;

        public MeasureViewModel(IMeasureManager manager)
        {
            _measureManager = manager;
        }

        static private List<MeasureModel> CreateMeasureModel(IEnumerable<Measure> measures)
        {
            List<MeasureModel> listMeasures = new List<MeasureModel>();
            var res = from m in measures                     
                      select new
                      {
                          Id = m.Id,
                          Name = m.ShortName
                      };        
            foreach (var m in measures)
            {
                listMeasures.Add(new MeasureModel(m.Id, m.ShortName));
            }     
            return listMeasures;
        }
        
        public IEnumerable<MeasureModel> Measure
        {
            get
            {
                if (_items == null)
                {
                    _items = new List<MeasureModel>();
                    _items = CreateMeasureModel(
                            _measureManager.GetAll()                            
                        );
                }
                return _items;
            }
        }

        static private List<MeasureModel> CreateVolumeMeasureModel(IEnumerable<Measure> measures)
        {
            List<MeasureModel> listMeasures = new List<MeasureModel>();
            var res = from m in measures
                      select new
                      {
                          Id = m.Id,
                          Name = m.Name
                      };
            foreach (var m in measures)
            {
                listMeasures.Add(new MeasureModel(m.Id, m.Name));
            }
            return listMeasures;
        }

        public IEnumerable<MeasureModel> VolumeMeasure
        {
            get
            {
                if (_items == null)
                {
                    _items = new List<MeasureModel>();
                    _items = CreateVolumeMeasureModel(
                            _measureManager.GetAll()
                        );
                }
                return _items;
            }
        }        

        public List<string> Measures
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
