using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
//using profile.Models;

namespace profile.Controllers {
    [Route ("[controller]")]
    [ApiController]
    public class StatusController : ControllerBase {
        public StatusController () { }

        // GET api/status
        [HttpGet ("")]
        public ActionResult<IEnumerable<string>> Getstrings () {
            return Ok ();
        }

        // GET api/status/5
        [HttpGet ("healthz")]
        public ActionResult<string> healthz () {
            return Ok ();
        }
    }
}