//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BS.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class OutputOrderItem
    {
        public int Id { get; set; }
        public int OutputOrderId { get; set; }
        public int PackageId { get; set; }
        public decimal Quantity { get; set; }
        public decimal UnitCost { get; set; }
    
        public virtual OutputOrder OutputOrder { get; set; }
        public virtual Package Package { get; set; }
    }
}
