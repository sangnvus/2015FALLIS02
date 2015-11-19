//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DMS.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class DrugOrder
    {
        public DrugOrder()
        {
            this.DeliveryScheduleDetails = new HashSet<DeliveryScheduleDetail>();
            this.DrugOrderDetails = new HashSet<DrugOrderDetail>();
        }
    
        public int DrugOrderID { get; set; }
        public int DrugstoreID { get; set; }
        public string Note { get; set; }
        public double TotalPrice { get; set; }
        public Nullable<System.DateTime> DateOrder { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public int Status { get; set; }
        public Nullable<int> SalesmanID { get; set; }
    
        public virtual ICollection<DeliveryScheduleDetail> DeliveryScheduleDetails { get; set; }
        public virtual Drugstore Drugstore { get; set; }
        public virtual ICollection<DrugOrderDetail> DrugOrderDetails { get; set; }
    }
}
