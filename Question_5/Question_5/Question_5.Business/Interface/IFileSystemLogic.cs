using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Question_5.Business
{
    public interface IFileSystemLogic
    {
        IEnumerable<FileSystemObject> SearchByFileName(string filename);
    }
}
