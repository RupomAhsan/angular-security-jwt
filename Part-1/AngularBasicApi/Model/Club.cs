using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AngularBasicApi.Model
{
  [Table("Club", Schema = "dbo")]
  public partial class Club
  {
    public int Id { get; set; }

    [Required()]
    [StringLength(30)]
    public string Name { get; set; }
  }
}