﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Notes.Models
{
    public class NoteContext : DbContext
    {
        public DbSet<NoteClass> NoteClasses { get; set; }
    }
}