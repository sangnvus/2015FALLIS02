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
    
    public partial class DeliveryScheduleDetail
    {
        public int DeliveryScheduleDetailsID { get; set; }
        public int DeliveryScheduleID { get; set; }
        public int DrugOrderID { get; set; }
        public int Status { get; set; }
    
        public virtual DeliverySchedule DeliverySchedule { get; set; }
        public virtual DrugOrder DrugOrder { get; set; }
    }
}
