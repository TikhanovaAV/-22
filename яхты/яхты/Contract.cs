namespace яхты
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Contract")]
    public partial class Contract
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Contract()
        {
            Invoices = new HashSet<Invoice>();
        }

        [Key]
        public double Contract_ID { get; set; }

        public DateTime? Date { get; set; }

        public double? DepositPayed { get; set; }

        public double? Order_ID { get; set; }

        public double? ContractTotalPrice { get; set; }

        public double? ContracTotalPrice_inclVAT { get; set; }

        [StringLength(255)]
        public string ProductionProcess { get; set; }

        [StringLength(255)]
        public string F8 { get; set; }

        public double? F9 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Invoice> Invoices { get; set; }
    }
}
