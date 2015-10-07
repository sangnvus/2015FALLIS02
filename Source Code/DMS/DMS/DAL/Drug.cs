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
    
    public partial class Drug
    {
        public Drug()
        {
            this.DiscountRates = new HashSet<DiscountRate>();
            this.DrugOrderDetails = new HashSet<DrugOrderDetail>();
            this.Prices = new HashSet<Price>();
        }
    
        public int DrugID { get; set; }
        public Nullable<int> DrugCompanyID { get; set; }
        public Nullable<int> DrugTypeID { get; set; }
        public string DrugName { get; set; }
        public string MiniDescription { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
        public Nullable<bool> IsActive { get; set; }
    
        public virtual ICollection<DiscountRate> DiscountRates { get; set; }
        public virtual DrugCompany DrugCompany { get; set; }
        public virtual DrugType DrugType { get; set; }
        public virtual ICollection<DrugOrderDetail> DrugOrderDetails { get; set; }
        public virtual ICollection<Price> Prices { get; set; }
    }
}