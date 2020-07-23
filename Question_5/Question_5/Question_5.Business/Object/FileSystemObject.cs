using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Question_5.Business
{
    public class FileSystemObject
    {
        public int FileId { get; set; }
        public string FileName { get; set; }
        public string FullPath { get; set; }
        public string FileType { get; set; }
        public int Size { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime? DateModified { get; set; }
        public bool ReadOnly { get; set; }
    }
}
