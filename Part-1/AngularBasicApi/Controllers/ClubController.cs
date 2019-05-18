using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using AngularBasicApi.Model;

namespace AngularBasicApi.Controllers
{
  [Route("api/[controller]")]
  public class ClubController : BaseApiController
  {
    // GET api/values
    [HttpGet]
    public IActionResult Get()
    {
      IActionResult ret = null;
      List<Club> list = new List<Club>();

      try
      {
        using (var db = new AngularBasicDbContext())
        {
          if (db.Clubs.Count() > 0)
          {
            // NOTE: Declare 'list' outside the using to avoid 
            // it being disposed before it is returned.
            list = db.Clubs.OrderBy(p => p.Id).ToList();
            ret = StatusCode(StatusCodes.Status200OK, list);
          }
          else
          {
            ret = StatusCode(StatusCodes.Status404NotFound,
                           "Can't Find Clubs");
          }
        }
      }
      catch (Exception ex)
      {
        ret = HandleException(ex,
             "Exception trying to get all Clubs");
      }

      return ret;
    }
  }
}
