using Question_5.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Question_5.Business
{
    public class FileSystemLogic : IFileSystemLogic
    {
        public IEnumerable<FileSystemObject> SearchByFileName(string filename)
        {
            DBContext db = new DBContext();

            var result = (from fs in db.FileSystemSearch(filename)
                          select new FileSystemObject
                          {
                              FileId = fs.FileId,
                              FullPath = fs.FullPath,
                              FileName = fs.FileName,
                              ReadOnly = fs.ReadOnly,
                              Size = fs.Size,
                              DateCreated = fs.DateCreated
                          });

            return result;
        }
    }
}
