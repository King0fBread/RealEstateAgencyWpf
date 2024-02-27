﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RealEstateAgency.Models
{
    class Model
    {
        private static RealEstateAgencyEntities _context;
        public static RealEstateAgencyEntities GetContext()
        {
            if (_context == null)
                _context = new RealEstateAgencyEntities();
            return _context;
        }
    }
}
