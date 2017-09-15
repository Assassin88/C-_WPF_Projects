using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVVMLight_Sample.Model
{
    public class RandomPosition
    {
        private static String[] position = new String[]
        {
            "Developer",
            "Manager",
            "Tester",
            "Web_Developer",
            "SysAdmin",
            "Administrator",
            "Networker",
        };

        /// <summary>
        /// Method of random position generation
        /// </summary>
        /// <returns></returns>
        public static String GetRandomPosition()
        {
            return position[Randomer.Next(0, position.Length)];
        }

    }
}
