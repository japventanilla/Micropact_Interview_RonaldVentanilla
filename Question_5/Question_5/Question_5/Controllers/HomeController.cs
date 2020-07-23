using Question_5.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Question_5.Business;

namespace Question_5.Controllers
{
    public class HomeController : Controller
    {
        private IFileSystemLogic _fileSystem;

        public HomeController(IFileSystemLogic fileSystem)
        {
            this._fileSystem = fileSystem;
        }
        
        public ActionResult Index()
        {
            IEnumerable<FileSystemViewModel> viewModel = GetViewModel(string.Empty);
            return View(viewModel);
        }

        [HttpPost]
        public ActionResult Index(string criteria)
        {
            IEnumerable<FileSystemViewModel> viewModel = GetViewModel(criteria);
            return View(viewModel);
        }

        private IEnumerable<FileSystemViewModel> GetViewModel(string criteria)
        {
            var fileSystemModel = this._fileSystem.SearchByFileName(criteria);
            IEnumerable<FileSystemViewModel> result = (from fs in fileSystemModel
                                                          select new FileSystemViewModel
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