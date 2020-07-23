using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace Question_5.Data
{
    public class DBContext
    {
        public List<FileSystem> FileSystemSearch(string criteria)
        {
            List<FileSystem> result = new List<FileSystem>();

            using (SqlConnection conn = new SqlConnection("Server=(local);Database=Interview_RonaldVentanilla;User Id=sa;Password=japskie12345;Integrated Security=SSPI"))
            {
                conn.Open();
                
                SqlCommand cmd = new SqlCommand("usp_FileSearch", conn);
                
                cmd.CommandType = CommandType.StoredProcedure;
                
                cmd.Parameters.Add(new SqlParameter("@criteria", criteria));
                
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        FileSystem file = new FileSystem();

                        file.FileId = Convert.ToInt32(rdr["FileId"]);
                        file.FileName = rdr["FileName"].ToString();
                        file.FullPath = rdr["FullPath"].ToString();
                        file.Size = Convert.ToInt32(rdr["Size"]);
                        file.DateCreated = Convert.ToDateTime(rdr["DateCreated"]);

                        result.Add(file);


                    }
                }
            }

            return result;
        }
    }
}
