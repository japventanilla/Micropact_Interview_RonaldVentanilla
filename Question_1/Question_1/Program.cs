using System;
using System.Text;

namespace Question_1
{
    class Program
    {
        static void Main(string[] args)
        {
            string result = RemoveCharacterFromString("bababac", 'a');
            Console.WriteLine(result);
            Console.ReadKey();
        }

        public static string RemoveCharacterFromString(string input, char toRemove)
        {
            StringBuilder result = new StringBuilder("");

            foreach (char c in input)
            {
                if (c != toRemove)
                {
                    result.Append(c.ToString());
                }
            }

            return result.ToString();
        }
    }
}
