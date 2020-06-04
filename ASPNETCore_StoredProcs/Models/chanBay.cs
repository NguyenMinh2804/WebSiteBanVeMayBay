using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ASPNETCore_StoredProcs.Models
{
    public class chanBay
    {
        public int IDChan { get; set; }
        public String IDHang { get; set; }
        public String IDLoaiMayBay { get; set; }
        public String DiemDi { get; set; }
        public String SanBayDi { get; set; }
        public String SanBayDen { get; set; }
        public String DiemDen { get; set; }
        public DateTime? NgayDi { get; set; }
        public float ThoiGianBay { get; set; }
        public DateTime? NgayDen { get; set; }
        public float HanhLy { get; set; }
        public int TongSlVe { get; set; }
    }
}
