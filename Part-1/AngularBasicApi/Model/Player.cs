using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AngularBasicApi.Model
{
  [Table("Player", Schema = "dbo")]
  public partial class Player
  {
    public int Id { get; set; }

    [Required()]
    [StringLength(80)]
    public string Name { get; set; }

    public DateTime? JoinedDate { get; set; }

    [Column(TypeName = "money")]
    public decimal? Price { get; set; }

    [Required()]
    [StringLength(255)]
    public string Nationality { get; set; }

    public int? ClubId { get; set; }
  }
}
