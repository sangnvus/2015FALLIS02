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
    
    public partial class District
    {
        public District()
        {
            this.Drugstores = new HashSet<Drugstore>();
        }
    
        public int DistrictID { get; set; }
        public string DistrictName { get; set; }
        public Nullable<int> SalesmanID { get; set; }
    
        public virtual Account Account { get; set; }
        public virtual ICollection<Drugstore> Drugstores { get; set; }
    }
}
