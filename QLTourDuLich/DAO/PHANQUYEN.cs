//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAO
{
    using System;
    using System.Collections.Generic;
    
    public partial class PHANQUYEN
    {
        public string MAPHANQUYEN { get; set; }
        public string MANHOM { get; set; }
        public string MAMANHINH { get; set; }
        public Nullable<bool> COQUYEN { get; set; }
    
        public virtual MANHINH MANHINH { get; set; }
        public virtual NHOMNGUOIDUNG NHOMNGUOIDUNG { get; set; }
    }
}
