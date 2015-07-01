using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BS.Presentation.Models
{
    public class MeasureModel
    {
        public int Id { set; get; }
        public string ShortName { get; set; }

        public MeasureModel(int id, string shortName)
        {
            Id = id;
            ShortName = shortName;
        }

        public override string ToString()
        {
            return ShortName;
        }
    }
}
