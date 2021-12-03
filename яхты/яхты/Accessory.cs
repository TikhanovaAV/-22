namespace яхты
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Accessory")]
    public partial class Accessory
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Accessory()
        {
            OrderDetails = new HashSet<OrderDetail>();
            Аксессуары_лодочные = new HashSet<Аксессуары_лодочные>();
        }

        [Key]
        public double Accessory_ID { get; set; }

        [StringLength(255)]
        public string AccName { get; set; }

        [StringLength(255)]
        public string DescriptionOfAccessory { get; set; }

        [Column(TypeName = "money")]
        public decimal? Price { get; set; }

        public double? VAT { get; set; }

        public double? Inventory { get; set; }

        public double? OrderLevel { get; set; }

        public double? OrderBatch { get; set; }

        public double? Partner_ID { get; set; }

        public virtual Partner Partner { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Аксессуары_лодочные> Аксессуары_лодочные { get; set; }
    }
}
