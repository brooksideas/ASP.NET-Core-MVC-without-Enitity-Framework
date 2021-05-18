﻿using System;
using System.ComponentModel.DataAnnotations;

namespace MVCCRUDwithoutEF.Models
{
    public class BookViewModel
    {
        [Key]
        public int BookID { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        public string Author { get; set; }
        [Range(1, int.MaxValue, ErrorMessage = "Should be greated than or equal to 1")]
        public int Price { get; set; }
    }
}
