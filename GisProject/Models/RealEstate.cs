using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;

namespace GisProject.Models
{
    [Table("RealEstate", Schema="dbo")]
    [Serializable]
    public class RealEstate
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(100)]
        public string Title { get; set; }

        public string Description { get; set; }
        [Required]
        public int Room { get; set; }
        [Required]
        public int Msquare { get; set; }
        [Required]
        [DataType(DataType.Currency)]
        [DisplayFormat(DataFormatString = "{0:C}")]
        public decimal Price { get; set; }
        [Required]
        public string Tel { get; set; }
        [Required]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
        [Required]
        [DisplayFormat(DataFormatString = "{0:F15}")]
        public double Longitude { get; set; }
        [Required]
        [DisplayFormat(DataFormatString = "{0:F15}")]
        public double Latitude { get; set; }

        public virtual List<Image> images { get; set; }

        public bool Status { get; set; }

        public RealEstate()
        {
            images = new List<Image>();
        }

    }
}