using System.ComponentModel.DataAnnotations;
using System;

namespace GisProject.Models
{
    [Table("Image", Schema = "dbo")]
    [Serializable]
    public class Image
    {
        [Key]
        public int Id { get; set; }

        [StringLength(100)]
        [DataType(DataType.ImageUrl)]
        public string URL { get; set; }

        public virtual RealEstate  realEstate { get; set; }
    }
}