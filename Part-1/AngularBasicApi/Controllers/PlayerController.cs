using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using AngularBasicApi.Model;

namespace AngularBasicApi.Controllers
{
  [Route("api/[controller]")]
  public class PlayerController : BaseApiController
  {
    [HttpGet]
    public IActionResult Get()
    {
      IActionResult ret = null;
      List<Player> list = new List<Player>();

      try
      {
        using (var db = new AngularBasicDbContext())
        {
          if (db.Players.Count() > 0)
          {
            list = db.Players.OrderBy(p => p.Name).ToList();
            ret = StatusCode(StatusCodes.Status200OK, list);
          }
          else
          {
            ret = StatusCode(StatusCodes.Status404NotFound, "Can't Find Players");
          }
        }
      }
      catch (Exception ex)
      {
        ret = HandleException(ex, "Exception trying to get all Players");
      }

      return ret;
    }

    [HttpGet("{id}", Name = "Get")]
    public IActionResult Get(int id)
    {
      IActionResult ret = null;
      Player entity = null;

      try
      {
        using (var db = new AngularBasicDbContext())
        {
          entity = db.Players.Find(id);
          if (entity != null)
          {
            ret = StatusCode(StatusCodes.Status200OK, entity);
          }
          else
          {
            ret = StatusCode(StatusCodes.Status404NotFound,
                     "Can't Find Player: " + id.ToString());
          }
        }
      }
      catch (Exception ex)
      {
        ret = HandleException(ex,
          "Exception trying to retrieve a single Player.");
      }

      return ret;
    }

    [HttpPost()]
    public IActionResult Post([FromBody]Player entity)
    {
      IActionResult ret = null;

      try
      {
        using (var db = new AngularBasicDbContext())
        {
          if (entity != null)
          {
            db.Players.Add(entity);
            db.SaveChanges();
            ret = StatusCode(StatusCodes.Status201Created,
                entity);
          }
          else
          {
            ret = StatusCode(StatusCodes.Status400BadRequest, "Invalid object passed to POST method");
          }
        }
      }
      catch (Exception ex)
      {
        ret = HandleException(ex, "Exception trying to insert a new player");
      }

      return ret;
    }

    [HttpPut()]
    public IActionResult Put([FromBody]Player entity)
    {
      IActionResult ret = null;

      try
      {
        using (var db = new AngularBasicDbContext())
        {
          if (entity != null)
          {
            db.Update(entity);
            db.SaveChanges();
            ret = StatusCode(StatusCodes.Status200OK, entity);
          }
          else
          {
            ret = StatusCode(StatusCodes.Status400BadRequest, "Invalid object passed to PUT method");
          }
        }
      }
      catch (Exception ex)
      {
        ret = HandleException(ex, "Exception trying to update player: " + entity.Id.ToString());
      }

      return ret;
    }

    [HttpDelete("{id}")]
    public IActionResult Delete(int id)
    {
      IActionResult ret = null;
      Player entity = null;

      try
      {
        using (var db = new AngularBasicDbContext())
        {
          entity = db.Players.Find(id);
          if (entity != null)
          {
            db.Players.Remove(entity);
            db.SaveChanges();
          }
          ret = StatusCode(StatusCodes.Status200OK, true);
        }
      }
      catch (Exception ex)
      {
        ret = HandleException(ex, "Exception trying to delete player: " + id.ToString());
      }

      return ret;
    }
  }
}
