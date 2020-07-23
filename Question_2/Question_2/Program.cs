using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Question_2
{
    class Program
    {
        static void Main(string[] args)
        {
            string fullFilePath = Path.GetFullPath(Directory.GetCurrentDirectory() + @"..\\..\\..\\integers1.txt");
            int sumOfIntegers = SumIntegersInFile(fullFilePath);
            Console.WriteLine(sumOfIntegers);
            Console.ReadKey();
        }

        public static int SumIntegersInFile(string fullFilePath)
        {
            int sumOfIntegers = 0;

            if (File.Exists(fullFilePath))
            {
                string[] lines = File.ReadAllLines(fullFilePath);
                foreach (string line in lines)
                {
                    int number;                    
                    bool isParsable = Int32.TryParse(line, out number);

                    if (isParsable)
                        sumOfIntegers += number;
                    else
                        Console.WriteLine("Could not be parsed.");
                }
            }
            else
            {
                Console.WriteLine("file doesn't exists");
            }

            return sumOfIntegers;
        }
    }
}
