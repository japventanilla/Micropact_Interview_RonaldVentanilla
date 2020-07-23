using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Question_5.Models
{
    public class FileSystemViewModel
    {
        public int FileId { get; set; }
        public string FileName { get; set; }
        public string FullPath { get; set; }
        public bool ReadOnly { get; set; }

        public string ReadOnlyString {
            get
            {
                return this.ReadOnly ? "Yes" : "No";
            }
        }
        public int Size { get; set; }

        public string SizeString
        {
            get
            {
                if(this.Size> 1024 && this.Size < 1048576)
                {
                    return (this.Size/1024) + " bytes";
                }
                else if (this.Size > 1048576)
                {
                    return (this.Size/ 1048576) + " bytes";
                }
                else
                {
                    return this.Size + " bytes";
                }                
            }
        }
        public DateTime DateCreated { get; set; }
        public string DateCreatedString
        {
            get
            {
                return this.DateCreated.ToShortDateString();
            }
        }
    }
}