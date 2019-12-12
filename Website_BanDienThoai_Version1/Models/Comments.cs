using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Website_BanDienThoai_Version1.Models
{
    public class Comments
    {
        [Key]
        public int CommentId { get; set; }
        public int ProductsId { get; set; }
        [ForeignKey("ProductsId")]
        public virtual Products Products { get; set; }
        public string Content { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public DateTime CommentDate { get; set; }
    }
}
