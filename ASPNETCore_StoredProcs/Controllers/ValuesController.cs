using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ASPNETCore_StoredProcs.Data;
using ASPNETCore_StoredProcs.Models;
using Microsoft.AspNetCore.Mvc;

namespace ASPNETCore_StoredProcs.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ValuesController : ControllerBase
    {
        private readonly chanBayRespone _repository;

        public ValuesController(chanBayRespone repository)
        {
            this._repository = repository ?? throw new ArgumentNullException(nameof(repository));
        }

        // GET api/values
        //[HttpGet]
        // public async Task<ActionResult<IEnumerable<chanBay>>> Get()
        // {
        //     return await _repository.GetAll();
        // }

        // GET api/values/5
        [HttpGet]
        public async Task<ActionResult<IEnumerable<chanBay>>> Get(string diemDi, string diemDen, DateTime ngayDi,DateTime ngayVe, int khuHoi,  int SlNgLon, int SlTreEm, int SlTreSs)
        {
            return await _repository.Sreach_Ticket(diemDi, diemDen, khuHoi, ngayDi ,ngayVe, SlNgLon, SlTreEm, SlTreSs);
        }

    }
}
