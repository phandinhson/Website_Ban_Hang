using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Website_BanDienThoai_Version1.Models
{
    public class Contact
    {
        public int ContactId { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Opinion { get; set; }
        public DateTime ContactDate { get; set; }
    }
}
