using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using CatBreedsApi.Models;

namespace CatBreedsApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CatBreedController : ControllerBase
    {
        private readonly CatBreedContext _context;

        public CatBreedController(CatBreedContext context)
        {
            _context = context;
        }

        // GET: api/CatBreed
        [HttpGet]
        public async Task<ActionResult<IEnumerable<CatBreed>>> GetCatBreeds()
        {
            return await _context.CatBreeds.ToListAsync();
        }

        // GET: api/CatBreed/5
        [HttpGet("{id}")]
        public async Task<ActionResult<CatBreed>> GetCatBreed(long id)
        {
            var catBreed = await _context.CatBreeds.FindAsync(id);

            if (catBreed == null)
            {
                return NotFound();
            }

            return catBreed;
        }

        // PUT: api/CatBreed/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCatBreed(long id, CatBreed catBreed)
        {
            if (id != catBreed.Id)
            {
                return BadRequest();
            }

            _context.Entry(catBreed).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CatBreedExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/CatBreed
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        [HttpPost]
        public async Task<ActionResult<CatBreed>> PostCatBreed(CatBreed catBreed)
        {
            _context.CatBreeds.Add(catBreed);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetCatBreed", new { id = catBreed.Id }, catBreed);
        }

        // DELETE: api/CatBreed/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<CatBreed>> DeleteCatBreed(long id)
        {
            var catBreed = await _context.CatBreeds.FindAsync(id);
            if (catBreed == null)
            {
                return NotFound();
            }

            _context.CatBreeds.Remove(catBreed);
            await _context.SaveChangesAsync();

            return catBreed;
        }

        private bool CatBreedExists(long id)
        {
            return _context.CatBreeds.Any(e => e.Id == id);
        }
    }
}
