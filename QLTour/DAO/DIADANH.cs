//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLTour
{
    using System;
    using System.Collections.Generic;
    
    public partial class DIADANH
    {
        public DIADANH()
        {
            this.DIADIEMs = new HashSet<DIADIEM>();
        }
    
        public string MADIADANH { get; set; }
        public string TENDIADANH { get; set; }
    
        public virtual ICollection<DIADIEM> DIADIEMs { get; set; }
    }
}
